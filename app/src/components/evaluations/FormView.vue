<template>
  <div class="card mb-3">
    <div class="card-header"><div class="card-title">Nouvelle Evaluation</div></div>
    <div class="card-body">
      <div class="row">
        <div class="col-md-4">
          <div class="form-group mb-3">
            <label class="form-label">Menace</label>
            <select class="form-select" v-model="formData.menace" :disabled="filteredMenaces.length === 0">
              <option disabled :value="{ id: '', lib: '' }">{{ filteredMenaces.length ? 'Sélectionner une menace' : 'Aucune menace pour cet axe' }}</option>
              <option v-for="menace in filteredMenaces" :key="menace.id" :value="{ id: menace.id, lib: menace.lib }">
                {{ menace.lib }}
              </option>
            </select>
          </div>
        </div>
        <div class="col-md-4">
          <div class="form-group mb-3">
            <label class="form-label">Niveau</label>
            <select class="form-select" v-model="formData.niveau">
              <option v-for="(t, k) in store.CONSTANTES.niveau" :key="k" :value="t">
                {{ t }}
              </option>
            </select>
          </div>
        </div>
        <div class="col-md-4">
          <div class="form-group mb-3">
            <label class="form-label">Province</label>
            <select class="form-select" v-model="formData.province">
              <option v-for="(t, k) in store.CONSTANTES.province" :key="k" :value="t">
                {{ t }}
              </option>
            </select>
          </div>
        </div>
        <div class="col-md-4">
          <div class="form-group mb-3">
            <label class="form-label">Entité</label>
            <input type="text" class="form-control" v-model="formData.entite">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 mb-3">
          <label class="form-label">Date</label>
          <input type="date" class="form-control" v-model="formData.periode">
        </div>
        <div class="col-md-8 mb-3">
          <label class="form-label">Participants</label>
          <input type="text" class="form-control" v-model="formData.participants">
        </div>
        <div class="col-md-12 mb-3">
          <label class="form-label">Commentaires</label>
          <textarea class="form-control" v-model="formData.commentaires"></textarea>
        </div>
      </div>
    </div>
    <div class="card-footer text-end">
      <button class="btn btn-primary" :disabled="!selectedMenace" @click="handleSubmit">Enregistrer</button>
    </div>
  </div>
</template>

<script setup>
import { computed, ref, onMounted, toRaw, watch } from 'vue'
import { useRouter } from 'vue-router'
import { useStore } from '../../store'
import { db } from '../../db'
import { syncNow } from '../../sync'

const store = useStore()
const router = useRouter()

const sortByCode = (a, b) => (a.code || '').localeCompare(b.code || '', undefined, { numeric: true })

const formData = ref({
  id: '',
  axe: '',
  menace: { id: '', lib: '' },
  menace_lib: '',
  menace_id: '',
  niveau: '',
  province: '',
  entite: '',
  periode: '',
  participants: '',
  commentaires: ''
})

const lists = ref({
  menaces: []
})

// Le selecteur utilise Hopital, les fixtures utilisent Hopitaux.
const normalizeAxe = axe => ['Hopital', 'Hopitaux', 'Hôpital préparé'].includes(axe) ? 'Hopital' : axe
const filteredMenaces = computed(() => lists.value.menaces.filter(menace =>
  !store.STATES.axe || normalizeAxe(menace.axe) === normalizeAxe(store.STATES.axe)
))
const selectedMenace = computed(() => filteredMenaces.value.find(menace => menace.id === formData.value.menace.id))

watch(filteredMenaces, () => {
  if (!selectedMenace.value) formData.value.menace = { id: '', lib: '' }
})

const handleSubmit = async () => {
  try {
    const menace = selectedMenace.value
    if (!menace) return
    
    // 1. Préparation de l'évaluation
    formData.value.id = crypto.randomUUID()
    formData.value.axe = store.STATES.axe || menace.axe
    const timestamp = syncNow()
    formData.value.create_at = timestamp
    formData.value.update_at = timestamp
    formData.value.sync_status = 'pending_insert'
    formData.value.score = 0
    formData.value.etat = 'Brouillon'
    formData.value.menace_id = formData.value.menace.id
    formData.value.menace_lib = formData.value.menace.lib

    // Sauvegarde de l'évaluation
    await db.evaluations.add(toRaw(formData.value))

    // 2. Génération des piliers
    const piliersBruts = await db.piliers
      .where('menace_id')
      .equals(formData.value.menace_id)
      .toArray()

    piliersBruts.sort(sortByCode)

    const piliers = piliersBruts.map((v) => ({
      id: crypto.randomUUID(),
      evaluation_id: formData.value.id,
      pilier_id: v.id,
      code: v.code,
      lib: v.lib,
      score: 0,
      create_at: timestamp,
      update_at: timestamp,
      sync_status: 'pending_insert'
    }))

    if (piliers.length > 0) {
      await db.evaluation_piliers.bulkAdd(piliers)
    }

    // 3. Génération des exigences (Boucle for...of pour gérer l'asynchronisme)
    let exigences = []
    
    for (const v of piliers) {
      const items = await db.exigences
        .where('pilier_id')
        .equals(v.pilier_id)
        .toArray()

      items.sort(sortByCode)

      const MappedItems = items.map((e) => ({
        id: crypto.randomUUID(),
        evaluation_pilier_id: v.id,
        exigence_id: e.id,
        code: String(e.code ?? '').replace(/^E([0-9])$/, 'E0$1'),
        lib: e.lib,
        statut: formData.value.axe === 'Rapide' ? '' : 'NON',
        cote: null,
        argument: '',
        create_at: timestamp,
        update_at: timestamp,
        sync_status: 'pending_insert'
      }))

      exigences.push(...MappedItems)
    }

    // Sauvegarde des exigences
    if (exigences.length > 0) {
      await db.evaluation_exigences.bulkAdd(exigences)
    }

    // 4. Redirection vers la vue d'évaluation
    router.push(`/evaluation/${formData.value.id}`)

  } catch (error) {
    console.error("Erreur lors de la sauvegarde :", error)
  }
}

onMounted(async () => {
  lists.value.menaces = await db.menaces.toArray()
})
</script>
