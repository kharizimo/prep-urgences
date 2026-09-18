<script setup>
import Sidebar from '../components/evaluation-detail/Sidebar.vue';
import { db } from '../db'
import { computed, ref, onMounted, watch } from 'vue'
import { useRoute } from 'vue-router'
import StatutToggle from '../components/evaluation-detail/StatutToggle.vue';
import CoteToggle from '../components/evaluation-detail/CoteToggle.vue';
import { jsPDF } from 'jspdf'
import autoTable from 'jspdf-autotable'
import { syncNow, nextSyncStatus } from '../sync'

const route = useRoute()
const id = route.params.id

const sortByCode = (a, b) => String(a.code ?? '').localeCompare(String(b.code ?? ''), 'fr', { numeric: true })

const scoreStatus = score => score < 65 ? 'Insuffisant' : score <= 85 ? 'Partiel' : 'Préparé'

const data = ref({})
const piliers = ref([])
const exigences = ref([])
const isRapide = computed(() => data.value.axe === 'Rapide')

const sortedPiliers = computed(() => [...piliers.value].sort(sortByCode))
const exigencesByPilier = computed(() => {
  const groups = {}
  for (const exigence of exigences.value) {
    (groups[exigence.evaluation_pilier_id] ??= []).push(exigence)
  }
  for (const group of Object.values(groups)) group.sort(sortByCode)
  return groups
})

// Dictionnaire contenant les réponses : { [exigenceId]: { statut, preuve, ... } }
const formData = ref({})

const hasCote = ({ cote }) => Number.isInteger(cote) && cote >= 1 && cote <= 5

const getStatut = (response) => {
  if (!isRapide.value) return response.statut
  if (!hasCote(response)) return 'N/A'
  return response.cote === 5 ? 'OUI' : 'NON'
}

const calculateScore = (requirements) => {
  const statuses = requirements.map(getStatut)
  const answered = statuses.filter(statut => statut === 'OUI' || statut === 'NON')
  if (answered.length === 0) return 0

  const positive = answered.filter(statut => statut === 'OUI').length
  return Math.round((positive / answered.length) * 100)
}

const score = computed(() => calculateScore(Object.values(formData.value)))
const isValidated = computed(() => data.value.etat === 'Valide')
const treatedCount = computed(() => Object.values(formData.value)
  .filter(response => isRapide.value
    ? hasCote(response)
    : ['OUI', 'NON', 'N/A'].includes(response.statut)).length)

const updateScores = () => {
  data.value.score = score.value

  piliers.value.forEach(pilier => {
    const requirements = exigences.value.filter(({ evaluation_pilier_id }) => evaluation_pilier_id === pilier.id)
    pilier.score = calculateScore(requirements.map(({ id }) => formData.value[id]))
  })
}

const save = async () => {
  try {
    if (isValidated.value) {
      throw new Error('Cette évaluation est validée et ne peut plus être modifiée')
    }

    const evaluationId = data.value.id || id
    if (!evaluationId) {
      throw new Error('Identifiant de l’évaluation introuvable')
    }

    const timestamp = syncNow()

    const hasChanges = (original, edited) => [
      'statut', 'cote', 'argument',
      'preuve', 'commentaires', 'lacunes', 'actions', 'responsables',
      'delai', 'ressources', 'partenaires', 'observation'
    ].some(field => String(original[field] ?? '') !== String(edited[field] ?? ''))

    const originalExigence = exigenceId => exigences.value.find(({ id }) => id === exigenceId) || {}

    const updates = Object.keys(formData.value)
      .filter(exigenceId => hasChanges(originalExigence(exigenceId), formData.value[exigenceId]))
      .map(exigenceId => {
        const original = originalExigence(exigenceId)
        return {
          key: exigenceId,
          changes: {
            statut: getStatut(formData.value[exigenceId]),
            ...(isRapide.value
              ? { cote: formData.value[exigenceId].cote, argument: formData.value[exigenceId].argument }
              : {}),
            preuve: formData.value[exigenceId].preuve,
            commentaires: formData.value[exigenceId].commentaires,
            lacunes: formData.value[exigenceId].lacunes,
            actions: formData.value[exigenceId].actions,
            responsables: formData.value[exigenceId].responsables,
            delai: formData.value[exigenceId].delai,
            ressources: formData.value[exigenceId].ressources,
            partenaires: formData.value[exigenceId].partenaires,
            observation: formData.value[exigenceId].observation,
            update_at: timestamp,
            sync_status: nextSyncStatus(original.sync_status)
          }
        }
      })

    updateScores()
    const updatedEvaluations = await db.transaction(
      'rw',
      [db.evaluations, db.evaluation_piliers, db.evaluation_exigences],
      async () => {
        await db.evaluation_exigences.bulkUpdate(updates)
        const plainPiliers = piliers.value.map(pilier => ({
          id: pilier.id,
          evaluation_id: pilier.evaluation_id,
          pilier_id: pilier.pilier_id,
          code: pilier.code,
          lib: pilier.lib,
          score: Number(pilier.score) || 0,
          create_at: pilier.create_at,
          update_at: pilier.update_at,
          sync_status: pilier.sync_status
        }))
        await db.evaluation_piliers.bulkPut(plainPiliers)
        return db.evaluations.update(evaluationId, {
          score: Number(score.value),
          periode: data.value.periode,
          participants: data.value.participants,
          commentaires: data.value.commentaires,
          update_at: timestamp,
          sync_status: nextSyncStatus(data.value.sync_status)
        })
      }
    )

    if (updatedEvaluations !== 1) {
      throw new Error('Aucune évaluation mise à jour')
    }

    updates.forEach(({ key, changes }) => {
      const exigence = exigences.value.find(({ id }) => id === key)
      if (exigence) Object.assign(exigence, changes)
    })
    data.value.score = Number(score.value)
    data.value.update_at = timestamp
    data.value.sync_status = nextSyncStatus(data.value.sync_status)

    alert('Évaluations enregistrées avec succès !')
  } catch (error) {
    console.error('Erreur lors de la sauvegarde :', error)
    alert(`Erreur lors de l'enregistrement : ${error.message}`)
  }
}

const validateEvaluation = async () => {
  if (isValidated.value) return

  try {
    const evaluationId = data.value.id || id
    const updatedEvaluations = await db.evaluations.update(evaluationId, { etat: 'Valide' })

    if (updatedEvaluations !== 1) {
      throw new Error('Aucune évaluation mise à jour')
    }

    data.value.etat = 'Valide'
    alert('Évaluation validée avec succès !')
  } catch (error) {
    console.error('Erreur lors de la validation :', error)
    alert(`Erreur lors de la validation : ${error.message}`)
  }
}

const reportFields = [
  ['argument', 'Argument'],
  ['preuve', 'Preuve / référence'],
  ['commentaires', 'Commentaires'],
  ['lacunes', 'Lacunes'],
  ['actions', 'Points d\u2019action'],
  ['responsables', 'Responsables'],
  ['delai', 'Délai'],
  ['ressources', 'Ressources'],
  ['partenaires', 'Partenaires'],
  ['observation', 'Observation']
]

const reportStatut = response => {
  if (!isRapide.value) return response.statut || '—'
  if (!hasCote(response)) return 'N/A'
  return response.cote === 5 ? 'OUI' : 'NON'
}

const openReport = () => {
  updateScores()

  const doc = new jsPDF({ unit: 'mm', format: 'a4' })
  const pageWidth = doc.internal.pageSize.getWidth()
  const pageHeight = doc.internal.pageSize.getHeight()
  const margin = 14
  const contentWidth = pageWidth - margin * 2
  let y = margin

  const ensureSpace = needed => {
    if (y + needed > pageHeight - margin) {
      doc.addPage()
      y = margin
    }
  }

  const text = value => String(value ?? '')

  const globalScore = Number(score.value) || 0

  // En-tête
  ensureSpace(24)
  doc.setFont('helvetica', 'bold')
  doc.setFontSize(16)
  doc.setTextColor(20)
  doc.text('Rapport d\u2019évaluation de préparation', margin, y)
  y += 6
  doc.setFont('helvetica', 'normal')
  doc.setFontSize(10)
  doc.setTextColor(110)
  doc.text(`${text(data.value.menace_lib)} — édition du ${new Date().toLocaleDateString('fr-FR')}`, margin, y)
  doc.setTextColor(20)
  y += 8

  // Informations générales
  const metadata = [
    ['Score global', `${globalScore}% (${scoreStatus(globalScore)})`],
    ['Menace', data.value.menace_lib],
    ['Province', data.value.province],
    ['Niveau', data.value.niveau],
    ['Entité', data.value.entite],
    ['Axe d\u2019évaluation', data.value.axe],
    ['Période', data.value.periode],
    ['État', data.value.etat],
    ['Participants', data.value.participants]
  ].filter(([, value]) => value != null && String(value).trim() !== '')

  autoTable(doc, {
    startY: y,
    margin: { left: margin, right: margin },
    theme: 'grid',
    body: metadata.map(([label, value]) => [label, value]),
    styles: { fontSize: 9, cellPadding: 2 },
    columnStyles: { 0: { fontStyle: 'bold', cellWidth: 50 } }
  })
  y = doc.lastAutoTable.finalY + 8

  // Scores par pilier
  ensureSpace(20)
  doc.setFont('helvetica', 'bold')
  doc.setFontSize(13)
  doc.text('Scores par pilier', margin, y)
  y += 3

  const pilierRows = sortedPiliers.value.map(pilier => [
    text(pilier.code),
    text(pilier.lib),
    `${Math.round(Number(pilier.score) || 0)}%`,
    ''
  ])

  autoTable(doc, {
    startY: y,
    margin: { left: margin, right: margin },
    theme: 'grid',
    head: [['Code', 'Pilier', 'Score', 'Progression']],
    body: pilierRows,
    styles: { fontSize: 9, cellPadding: 2 },
    columnStyles: {
      0: { cellWidth: 16, halign: 'center' },
      2: { cellWidth: 16, halign: 'center' }
    },
    didParseCell: cellData => {
      if (cellData.section === 'body' && cellData.column.index === 3) {
        const pilierScore = Math.round(Number(sortedPiliers.value[cellData.row.index]?.score) || 0)
        const x = cellData.cell.x + 1
        const cy = cellData.cell.y + cellData.cell.height / 2
        const barWidth = cellData.cell.width - 2
        if (barWidth > 0) {
          doc.setFillColor(220, 220, 220)
          doc.rect(x, cy - 1.2, barWidth, 2.4, 'F')
          const ratio = Math.min(100, Math.max(0, pilierScore)) / 100
          const fill = ratio < 0.65 ? [220, 53, 69] : ratio <= 0.85 ? [255, 193, 7] : [40, 167, 69]
          doc.setFillColor(...fill)
          doc.rect(x, cy - 1.2, barWidth * ratio, 2.4, 'F')
        }
      }
    }
  })
  y = doc.lastAutoTable.finalY + 8

  // Détail des exigences par pilier
  sortedPiliers.value.forEach(pilier => {
    const requirements = exigencesByPilier.value[pilier.id] || []
    if (requirements.length === 0) return

    ensureSpace(50)
    doc.setFont('helvetica', 'bold')
    doc.setFontSize(13)
    doc.text(`${text(pilier.code)} — ${text(pilier.lib)}`, margin, y)
    y += 3

    requirements.forEach(exigence => {
      const form = formData.value[exigence.id] || {}
      const fields = reportFields
        .filter(([key]) => form[key] != null && String(form[key]).trim() !== '')
        .map(([key, label]) => [label, String(form[key]).trim()])

      autoTable(doc, {
        startY: y,
        margin: { left: margin, right: margin },
        theme: 'grid',
        body: [[`${text(exigence.code)} — ${text(exigence.lib)}`, text(reportStatut(form))], ...fields],
        styles: { fontSize: 8, cellPadding: 1.5, overflow: 'linebreak' },
        columnStyles: {
          0: { cellWidth: contentWidth * 0.75 },
          1: { cellWidth: contentWidth * 0.25 }
        },
        didParseCell: cellData => {
          if (cellData.row.index === 0) {
            cellData.cell.styles.fontStyle = 'bold'
          }
        }
      })
      y = doc.lastAutoTable.finalY + 3
      ensureSpace(20)
    })
    y += 5
  })

  // Commentaires généraux
  if (data.value.commentaires && String(data.value.commentaires).trim() !== '') {
    ensureSpace(20)
    doc.setFont('helvetica', 'bold')
    doc.setFontSize(13)
    doc.text('Commentaires', margin, y)
    y += 4
    doc.setFont('helvetica', 'normal')
    doc.setFontSize(10)
    doc.setTextColor(50)
    const lines = doc.splitTextToSize(String(data.value.commentaires), contentWidth)
    ensureSpace(lines.length * 4)
    doc.text(lines, margin, y)
    doc.setTextColor(20)
  }

  const safeName = text(data.value.menace_lib).replace(/[^a-z0-9]+/gi, '_').replace(/^_+|_+$/g, '') || 'evaluation'
  doc.save(`Rapport_${safeName}_${new Date().toISOString().slice(0, 10)}.pdf`)
}

onMounted(async () => {
  data.value = await db.evaluations.get(id) || {}
  if (!data.value.axe && data.value.menace_id) {
    const menace = await db.menaces.get(data.value.menace_id)
    data.value.axe = menace?.axe || ''
  }

  // Codes de référence (utiles pour les évaluations créées avant l'ajout du champ code)
  const refPiliers = await db.piliers.toArray()
  const refExigences = await db.exigences.toArray()
  const pilierCodeById = Object.fromEntries(refPiliers.map(p => [p.id, p.code]))
  const exigenceCodeById = Object.fromEntries(refExigences.map(e => [e.id, e.code]))

  piliers.value = await db.evaluation_piliers.where('evaluation_id').equals(id).toArray()
  piliers.value.forEach(pilier => {
    if (!pilier.code) pilier.code = pilierCodeById[pilier.pilier_id]
  })

  const pilierIds = piliers.value.map(v => v.id);
  const exigencesBrutes = await db.evaluation_exigences.where('evaluation_pilier_id').anyOf(pilierIds).toArray()
  exigencesBrutes.forEach(exigence => {
    if (!exigence.code) exigence.code = exigenceCodeById[exigence.exigence_id]
    exigence.code = String(exigence.code ?? '').replace(/^E([0-9])$/, 'E0$1')
  })
  exigences.value = exigencesBrutes

  // INITIALISATION OBLIGATOIRE DE FORMDATA
  const initialForm = {}
  exigences.value.forEach(exigence => {
    initialForm[exigence.id] = {
      statut: exigence.statut || '',
      cote: exigence.cote ?? null,
      argument: exigence.argument ?? '',
      preuve: exigence.preuve || '',
      commentaires: exigence.commentaires || '',
      lacunes: exigence.lacunes || '',
      actions: exigence.actions || '',
      responsables: exigence.responsables || '',
      delai: exigence.delai || '',
      ressources: exigence.ressources || '',
      partenaires: exigence.partenaires || '',
      observation: exigence.observation || ''
    }
  })
  formData.value = initialForm
  updateScores()
})

watch(formData, updateScores, { deep: true })
</script>
<template>
  <main class="py-4">
    <div class="container">
      <header class="page-header mb-4">
        <div>
          <p class="eyebrow mb-1">Evaluation</p>
          <h1 class="h4 mb-1 fw-bold">{{ data.menace_lib }}, {{ data.province }}</h1>
          <p class="text-secondary mb-0">
            {{ data.entite }} &middot;
            {{ data.niveau }} &middot;
            {{ data.periode }}
            <span v-if="data.etat"> &middot; {{ data.etat }}</span>
          </p>
        </div>
        <RouterLink class="btn btn-light profile-save-btn" to="/evaluations">
          <i class="bi bi-arrow-left"></i>
          Retour
        </RouterLink>
      </header>

      <form @submit.prevent="save">
        <div class="evaluation-detail-layout">
          <Sidebar :data="data"/>
          <section class="evaluation-detail-main">
            <div class="detail-save-bar card">
              <div class="card-body">
                <div>
                  <strong>Exigences par pilier</strong>
                    <small>{{ treatedCount }} exigence{{ treatedCount > 1 ? 's' : '' }} trait&eacute;e{{ treatedCount > 1 ? 's' : '' }}</small>
                </div>
                <div class="detail-action-buttons">
                  <button class="btn btn-primary profile-save-btn" type="submit" :disabled="isValidated">
                    <i class="bi bi-check2-circle"></i>
                    Enregistrer
                  </button>
                  <button
                    class="btn btn-success profile-save-btn"
                    type="button"
                    :disabled="isValidated"
                    @click="validateEvaluation"
                  >
                    <i class="bi bi-patch-check"></i>
                    {{ isValidated ? 'Validée' : 'Valider' }}
                  </button>
                  <button class="btn btn-outline-primary profile-save-btn" type="button" @click="openReport">
                    <i class="bi bi-file-earmark-text"></i>
                    Rapport
                  </button>
                </div>
              </div>
            </div>

            <fieldset class="pillar-requirement-list border-0 p-0 m-0" :disabled="isValidated">
              <div class="pillar-list" v-for="pilier in sortedPiliers" :key="pilier.id">
                <div class="pillar-row">
                  <div class="pillar-head text-success">
                    <span><i class="bi bi-chevron-right text-primary me-1"></i> {{ pilier.code }} &mdash; {{ pilier.lib }}</span>
                  </div>
                  <div class="requirement-card-list">
                    <div
                      class="requirement-item"
                      v-for="exigence in exigencesByPilier[pilier.id] || []"
                      :key="exigence.id"
                    >
                      <!-- Sécurisation : on vérifie que la clé existe dans formData -->
                      <template v-if="formData[exigence.id]">
                        <div class="requirement-head">
                          <div>
                            <small>{{ exigence.code }}</small>
                            <strong>{{ exigence.lib }}</strong>
                          </div>
                          <!-- Liaison sur l'ID de l'exigence -->
                          <div v-if="isRapide">
                            <span class="d-block small mb-1">Cote</span>
                            <CoteToggle v-model="formData[exigence.id].cote" :code="exigence.code" />
                          </div>
                          <StatutToggle v-else v-model="formData[exigence.id].statut" />
                        </div>

                        <div class="requirement-fields">
                          <div v-if="isRapide">
                            <label class="form-label" :for="'argument-' + exigence.id">Argument</label>
                            <textarea class="form-control" :id="'argument-' + exigence.id" rows="3" v-model="formData[exigence.id].argument"></textarea>
                          </div>
                          <div>
                            <label class="form-label" :for="'preuve-' + exigence.id">Preuve / r&eacute;f&eacute;rence</label>
                            <input class="form-control" :id="'preuve-' + exigence.id" type="text" v-model="formData[exigence.id].preuve">
                          </div>
                          <div>
                            <label class="form-label" :for="'comm-' + exigence.id">Commentaires</label>
                            <input class="form-control" :id="'comm-' + exigence.id" type="text" v-model="formData[exigence.id].commentaires">
                          </div>
                          <div>
                            <label class="form-label" :for="'lacunes-' + exigence.id">Lacunes</label>
                            <input class="form-control" :id="'lacunes-' + exigence.id" type="text" v-model="formData[exigence.id].lacunes">
                          </div>
                          <div>
                            <label class="form-label" :for="'actions-' + exigence.id">Points d&rsquo;action</label>
                            <input class="form-control" :id="'actions-' + exigence.id" type="text" v-model="formData[exigence.id].actions">
                          </div>
                          <div>
                            <label class="form-label" :for="'resp-' + exigence.id">Responsables</label>
                            <input class="form-control" :id="'resp-' + exigence.id" type="text" v-model="formData[exigence.id].responsables">
                          </div>
                          <div>
                            <label class="form-label" :for="'delai-' + exigence.id">D&eacute;lai</label>
                            <input class="form-control" :id="'delai-' + exigence.id" type="date" v-model="formData[exigence.id].delai">
                          </div>
                          <div>
                            <label class="form-label" :for="'ressources-' + exigence.id">Ressources</label>
                            <input class="form-control" :id="'ressources-' + exigence.id" type="text" v-model="formData[exigence.id].ressources">
                          </div>
                          <div>
                            <label class="form-label" :for="'partenaires-' + exigence.id">Partenaires</label>
                            <input class="form-control" :id="'partenaires-' + exigence.id" type="text" v-model="formData[exigence.id].partenaires">
                          </div>
                          <div>
                            <label class="form-label" :for="'obs-' + exigence.id">Observation</label>
                            <input class="form-control" :id="'obs-' + exigence.id" type="text" v-model="formData[exigence.id].observation">
                          </div>
                        </div>
                      </template>
                    </div>
                  </div>
                </div>
              </div>
            </fieldset>
          </section>
        </div>
      </form>
    </div>
  </main>
</template>
