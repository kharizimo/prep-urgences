<script setup>
import Sidebar from '../components/evaluation-detail/Sidebar.vue';
import { db } from '../db'
import { computed, ref, onMounted, watch } from 'vue'
import { useRoute } from 'vue-router'
import StatutToggle from '../components/evaluation-detail/StatutToggle.vue';

const route = useRoute()
const id = route.params.id

const data = ref({})
const piliers = ref([])
const exigences = ref([])

// Dictionnaire contenant les réponses : { [exigenceId]: { statut, preuve, ... } }
const formData = ref({})

const calculateScore = (requirements) => {
  const answered = requirements.filter(({ statut }) => statut === 'OUI' || statut === 'NON')
  if (answered.length === 0) return 0

  const positive = answered.filter(({ statut }) => statut === 'OUI').length
  return Math.round((positive / answered.length) * 100)
}

const score = computed(() => calculateScore(Object.values(formData.value)))
const isValidated = computed(() => data.value.etat === 'Valide')
const treatedCount = computed(() => Object.values(formData.value)
  .filter(({ statut }) => statut === 'OUI' || statut === 'NON' || statut === 'N/A').length)

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

    const updates = Object.keys(formData.value).map(exigenceId => ({
      key: exigenceId,
      changes: {
        statut: formData.value[exigenceId].statut,
        preuve: formData.value[exigenceId].preuve,
        commentaires: formData.value[exigenceId].commentaires,
        lacunes: formData.value[exigenceId].lacunes,
        actions: formData.value[exigenceId].actions,
        responsables: formData.value[exigenceId].responsables,
        delai: formData.value[exigenceId].delai,
        ressources: formData.value[exigenceId].ressources,
        partenaires: formData.value[exigenceId].partenaires,
        observation: formData.value[exigenceId].observation
      }
    }))

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
          lib: pilier.lib,
          score: Number(pilier.score) || 0
        }))
        await db.evaluation_piliers.bulkPut(plainPiliers)
        return db.evaluations.update(evaluationId, { score: Number(score.value) })
      }
    )

    if (updatedEvaluations !== 1) {
      throw new Error('Aucune évaluation mise à jour')
    }

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

onMounted(async () => {
  data.value = await db.evaluations.get(id) || {}
  piliers.value = await db.evaluation_piliers.where('evaluation_id').equals(id).toArray()
  
  const pilierIds = piliers.value.map(v => v.id);
  exigences.value = await db.evaluation_exigences.where('evaluation_pilier_id').anyOf(pilierIds).toArray()

  // INITIALISATION OBLIGATOIRE DE FORMDATA
  const initialForm = {}
  exigences.value.forEach(exigence => {
    initialForm[exigence.id] = {
      statut: exigence.statut || '',
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
                  <button class="btn btn-outline-primary profile-save-btn" type="button">
                    <i class="bi bi-file-earmark-text"></i>
                    Rapport
                  </button>
                </div>
              </div>
            </div>

            <fieldset class="pillar-requirement-list border-0 p-0 m-0" :disabled="isValidated">
              <div class="pillar-list" v-for="(pilier, kp) in piliers" :key="pilier.id">
                <div class="pillar-row">
                  <div class="pillar-head text-success">
                    <span><i class="bi bi-chevron-right text-primary me-1"></i> P{{ kp + 1 }} &mdash; {{ pilier.lib }}</span>
                  </div>
                  <div class="requirement-card-list">
                    <div 
                      class="requirement-item" 
                      v-for="(exigence, ke) in exigences.filter(v => v.evaluation_pilier_id == pilier.id)" 
                      :key="exigence.id"
                    >
                      <!-- Sécurisation : on vérifie que la clé existe dans formData -->
                      <template v-if="formData[exigence.id]">
                        <div class="requirement-head">
                          <div>
                            <small>E{{ ke + 1 }}</small>
                            <strong>{{ exigence.lib }}</strong>
                          </div>
                          <!-- Liaison sur l'ID de l'exigence -->
                          <StatutToggle v-model="formData[exigence.id].statut" />
                        </div>

                        <div class="requirement-fields">
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