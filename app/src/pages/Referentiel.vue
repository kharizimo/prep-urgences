<script setup>
import { computed, onMounted, reactive, ref, watch } from 'vue'
import { db } from '../db'

const activeType = ref('menaces')
const search = ref('')
const selectedMenaceId = ref('')
const selectedPilierId = ref('')
const menaces = ref([])
const piliers = ref([])
const exigences = ref([])

const formOpen = ref(false)
const formType = ref('')
const formIsNew = ref(true)
const formError = ref('')
const form = reactive({
  id: '',
  lib: '',
  groupe: '',
  axe: '',
  code: '',
  menace_id: '',
  pilier_id: '',
  description: ''
})

const axes = ['Global', 'Hopitaux', 'Rapide']

const sortByLib = (a, b) =>
  (a.lib || '').localeCompare(b.lib || '', undefined, { numeric: true, sensitivity: 'base' })

const sortByCode = (a, b) =>
  (a.code || '').localeCompare(b.code || '', undefined, { numeric: true })

const sortMenace = (a, b) => {
  const order = { Global: 0, Hopitaux: 1, Rapide: 2 }
  const diff = (order[a.axe] ?? 9) - (order[b.axe] ?? 9)
  return diff || sortByLib(a, b)
}

const normalizedSearch = computed(() => search.value.trim().toLocaleLowerCase())

const selectedMenace = computed(() => menaces.value.find(menace =>
  String(menace.id) === String(selectedMenaceId.value)
))

const selectedPiliers = computed(() => piliers.value.filter(pilier =>
  String(pilier.menace_id) === String(selectedMenaceId.value)
))

const selectedExigences = computed(() => exigences.value.filter(exigence =>
  String(exigence.pilier_id) === String(selectedPilierId.value)
))

const filteredMenaces = computed(() => menaces.value
  .filter(menace => {
    if (!normalizedSearch.value) return true
    return [menace.lib, menace.groupe, menace.axe].some(value =>
      String(value ?? '').toLocaleLowerCase().includes(normalizedSearch.value)
    )
  })
  .sort(sortMenace)
)

const filteredPiliers = computed(() => piliers.value
  .filter(pilier => {
    const matchesMenace = !selectedMenaceId.value ||
      String(pilier.menace_id) === String(selectedMenaceId.value)
    const matchesSearch = !normalizedSearch.value ||
      String(pilier.lib ?? '').toLocaleLowerCase().includes(normalizedSearch.value)
    return matchesMenace && matchesSearch
  })
  .sort(sortByCode)
)

const filteredExigences = computed(() => exigences.value
  .filter(exigence => {
    const matchesPilier = !selectedPilierId.value ||
      String(exigence.pilier_id) === String(selectedPilierId.value)
    const matchesSearch = !normalizedSearch.value ||
      String(exigence.lib ?? '').toLocaleLowerCase().includes(normalizedSearch.value)
    return matchesPilier && matchesSearch
  })
  .sort(sortByCode)
)

const countPiliers = menaceId => piliers.value.filter(pilier =>
  String(pilier.menace_id) === String(menaceId)
).length

const countExigences = pilierId => exigences.value.filter(exigence =>
  String(exigence.pilier_id) === String(pilierId)
).length

const selectMenace = menaceId => {
  selectedMenaceId.value = menaceId
  const firstPilier = piliers.value.find(pilier =>
    String(pilier.menace_id) === String(menaceId)
  )
  selectedPilierId.value = firstPilier?.id || ''
}

const selectPilier = pilierId => {
  selectedPilierId.value = pilierId
  const pilier = piliers.value.find(item => String(item.id) === String(pilierId))
  if (pilier) selectedMenaceId.value = pilier.menace_id
}

const setActiveType = type => {
  activeType.value = type
  search.value = ''
}

const formTitle = computed(() => {
  const labels = { menaces: 'menace', piliers: 'pilier', exigences: 'exigence' }
  return `${formIsNew.value ? 'Nouvelle' : 'Modifier'} ${labels[formType.value] || ''}`
})

const menaceLabel = menace => menace ? menace.lib : '—'
const pilierLabel = pilier => pilier ? (pilier.code ? `${pilier.code} — ${pilier.lib}` : pilier.lib) : '—'

const suggestCode = (list, prefix) => {
  let max = 0
  for (const item of list) {
    const match = String(item.code || '').match(new RegExp(`^${prefix}(\\d+)$`, 'i'))
    if (match) max = Math.max(max, parseInt(match[1], 10))
  }
  return `${prefix}${String(max + 1).padStart(2, '0')}`
}

const openAdd = type => {
  formType.value = type
  formIsNew.value = true
  formError.value = ''
  Object.assign(form, { id: '', lib: '', groupe: '', axe: '', code: '', menace_id: '', pilier_id: '', description: '' })

  if (type === 'menaces') {
    form.axe = axes[0]
  } else if (type === 'piliers') {
    form.menace_id = selectedMenaceId.value || menaces.value[0]?.id || ''
    form.code = suggestCode(piliers.value.filter(p => String(p.menace_id) === String(form.menace_id)), 'P')
  } else {
    form.pilier_id = selectedPilierId.value || piliers.value[0]?.id || ''
    form.code = suggestCode(exigences.value.filter(e => String(e.pilier_id) === String(form.pilier_id)), 'E')
  }
  formOpen.value = true
}

const openEdit = (type, item) => {
  formType.value = type
  formIsNew.value = false
  formError.value = ''
  Object.assign(form, {
    id: item.id,
    lib: item.lib ?? '',
    groupe: item.groupe ?? '',
    axe: item.axe ?? '',
    code: item.code ?? '',
    menace_id: item.menace_id ?? '',
    pilier_id: item.pilier_id ?? '',
    description: item.description ?? ''
  })
  formOpen.value = true
}

watch(() => form.menace_id, value => {
  if (formType.value === 'piliers' && formIsNew.value) {
    form.code = suggestCode(piliers.value.filter(p => String(p.menace_id) === String(value)), 'P')
  }
})

watch(() => form.pilier_id, value => {
  if (formType.value === 'exigences' && formIsNew.value) {
    form.code = suggestCode(exigences.value.filter(e => String(e.pilier_id) === String(value)), 'E')
  }
})

const saveItem = async () => {
  try {
    if (formType.value === 'menaces') {
      if (!form.lib.trim()) return formError.value = 'Le libellé est requis.'
      const payload = { lib: form.lib.trim(), groupe: form.groupe.trim(), axe: form.axe }
      if (formIsNew.value) await db.menaces.add({ ...payload, id: crypto.randomUUID() })
      else await db.menaces.update(form.id, payload)
    } else if (formType.value === 'piliers') {
      if (!form.lib.trim()) return formError.value = 'Le libellé est requis.'
      if (!form.menace_id) return formError.value = 'La menace est requise.'
      const payload = { lib: form.lib.trim(), code: form.code.trim(), menace_id: form.menace_id }
      if (formIsNew.value) await db.piliers.add({ ...payload, id: crypto.randomUUID() })
      else await db.piliers.update(form.id, payload)
    } else {
      if (!form.lib.trim()) return formError.value = 'Le libellé est requis.'
      if (!form.pilier_id) return formError.value = 'Le pilier est requis.'
      const payload = { lib: form.lib.trim(), code: form.code.trim(), pilier_id: form.pilier_id, description: form.description.trim() }
      if (formIsNew.value) await db.exigences.add({ ...payload, id: crypto.randomUUID() })
      else await db.exigences.update(form.id, payload)
    }
    formOpen.value = false
    await loadData()
  } catch (err) {
    console.error('Erreur lors de la sauvegarde :', err)
    formError.value = 'Erreur lors de la sauvegarde.'
  }
}

const removeMenace = async menace => {
  if (!window.confirm(`Supprimer la menace « ${menace.lib} » ? Ses piliers et exigences seront aussi supprimés.`)) return
  const relatedPiliers = piliers.value
    .filter(p => String(p.menace_id) === String(menace.id))
    .map(p => p.id)
  const relatedExigences = exigences.value
    .filter(e => relatedPiliers.includes(String(e.pilier_id)))
    .map(e => e.id)
  // SOFT-DELETE logique en cascade : jamais de suppression physique.
  await softDelete('menaces', menace.id)
  for (const id of relatedPiliers) await softDelete('piliers', id)
  for (const id of relatedExigences) await softDelete('exigences', id)
  await loadData()
}

const removePilier = async pilier => {
  if (!window.confirm(`Supprimer le pilier « ${pilier.lib} » ? Ses exigences seront aussi supprimées.`)) return
  const related = exigences.value
    .filter(e => String(e.pilier_id) === String(pilier.id))
    .map(e => e.id)
  await softDelete('piliers', pilier.id)
  for (const id of related) await softDelete('exigences', id)
  await loadData()
}

const removeExigence = async exigence => {
  if (!window.confirm(`Supprimer l'exigence « ${exigence.lib.slice(0, 80)}... » ?`)) return
  await softDelete('exigences', exigence.id)
  await loadData()
}

const ensureSelection = () => {
  if (!menaces.value.length) {
    selectedMenaceId.value = ''
    selectedPilierId.value = ''
    return
  }
  if (!menaces.value.some(m => String(m.id) === String(selectedMenaceId.value))) {
    selectMenace(menaces.value[0].id)
    return
  }
  if (!piliers.value.some(p => String(p.id) === String(selectedPilierId.value))) {
    const first = piliers.value.find(p => String(p.menace_id) === String(selectedMenaceId.value))
    selectedPilierId.value = first?.id || ''
  }
}

const loadData = async () => {
  const [menaceRows, pilierRows, exigenceRows] = await Promise.all([
    db.menaces.toArray(),
    db.piliers.toArray(),
    db.exigences.toArray()
  ])

  menaces.value = [...menaceRows].sort(sortMenace)
  piliers.value = [...pilierRows].sort(sortByCode)
  exigences.value = [...exigenceRows].sort(sortByCode)
  ensureSelection()
}

onMounted(loadData)
</script>

<template>
  <main class="py-4">
    <div class="container">
      <header class="page-header mb-4">
        <div>
          <p class="eyebrow mb-1">Referentiel</p>
          <h1 class="h4 mb-1">Gestion du referentiel</h1>
          <p class="text-secondary mb-0">Menaces, piliers et exigences charg&eacute;s depuis IndexedDB.</p>
        </div>
      </header>

      <section class="evaluation-kpis mb-3">
        <article class="card metric-card">
          <i class="bi bi-virus2 text-primary"></i>
          <span>{{ menaces.length }}</span>
          <small>Menaces</small>
        </article>
        <article class="card metric-card">
          <i class="bi bi-columns-gap text-success"></i>
          <span>{{ piliers.length }}</span>
          <small>Piliers</small>
        </article>
        <article class="card metric-card">
          <i class="bi bi-check2-square text-warning"></i>
          <span>{{ exigences.length }}</span>
          <small>Exigences</small>
        </article>
        <article class="card metric-card">
          <i class="bi bi-diagram-3 text-info"></i>
          <span>{{ selectedMenace ? selectedPiliers.length : 0 }}</span>
          <small>Piliers de la menace</small>
        </article>
      </section>

      <section class="card mb-3">
        <div class="card-body">
          <div class="referential-toolbar">
            <div class="axis-toggle btn-group" role="group" aria-label="Type du referentiel">
              <button
                v-for="type in [['menaces', 'Menaces'], ['piliers', 'Piliers'], ['exigences', 'Exigences']]"
                :key="type[0]"
                class="btn"
                :class="activeType === type[0] ? 'btn-primary' : 'btn-outline-primary'"
                type="button"
                @click="setActiveType(type[0])"
              >
                {{ type[1] }}
              </button>
            </div>
            <div class="input-group users-search referential-search">
              <span class="input-group-text"><i class="bi bi-search"></i></span>
              <input v-model="search" class="form-control" type="search" placeholder="Rechercher" aria-label="Rechercher dans le referentiel">
            </div>
          </div>
        </div>
      </section>

      <section v-if="activeType === 'piliers'" class="card mb-3">
        <div class="card-body">
          <div class="reference-threat-panel">
            <div>
              <label class="form-label" for="pillarThreatFilter">Menace</label>
              <select v-model="selectedMenaceId" class="form-select" id="pillarThreatFilter" @change="selectMenace(selectedMenaceId)">
                <option v-for="menace in menaces" :key="menace.id" :value="menace.id">{{ menace.lib }}</option>
              </select>
            </div>
            <div class="entity-card">
              <strong>{{ selectedPiliers.length }}</strong>
              <small>Piliers rattaches</small>
            </div>
            <div class="entity-card">
              <strong>{{ selectedPiliers.reduce((total, pilier) => total + countExigences(pilier.id), 0) }}</strong>
              <small>Exigences rattachees</small>
            </div>
          </div>
        </div>
      </section>

      <section v-if="activeType === 'exigences'" class="card mb-3">
        <div class="card-body">
          <div class="reference-threat-panel">
            <div>
              <label class="form-label" for="requirementThreatFilter">Menace</label>
              <select v-model="selectedMenaceId" class="form-select" id="requirementThreatFilter" @change="selectMenace(selectedMenaceId)">
                <option v-for="menace in menaces" :key="menace.id" :value="menace.id">{{ menace.lib }}</option>
              </select>
            </div>
            <div>
              <label class="form-label" for="requirementPillarFilter">Pilier</label>
              <select v-model="selectedPilierId" class="form-select" id="requirementPillarFilter" @change="selectPilier(selectedPilierId)">
                <option v-for="pilier in selectedPiliers" :key="pilier.id" :value="pilier.id">{{ pilierLabel(pilier) }}</option>
              </select>
            </div>
            <div class="entity-card">
              <strong>{{ selectedExigences.length }}</strong>
              <small>Exigences rattachees</small>
            </div>
          </div>
        </div>
      </section>

      <section class="card">
        <div class="card-body">
          <div class="section-title justify-content-between">
            <span>
              <i class="bi bi-list-check"></i>
              <h3>{{ activeType === 'menaces' ? 'Menaces' : activeType === 'piliers' ? 'Piliers' : 'Exigences' }}</h3>
            </span>
            <button class="btn btn-sm btn-primary" type="button" @click="openAdd(activeType)">
              <i class="bi bi-plus-lg"></i>
              {{ activeType === 'menaces' ? 'Nouvelle menace' : activeType === 'piliers' ? 'Nouveau pilier' : 'Nouvelle exigence' }}
            </button>
          </div>

          <div v-if="activeType === 'menaces'" class="table-responsive">
            <table class="table align-middle mb-0">
              <thead><tr><th>Code</th><th>Menace</th><th>Groupe</th><th>Axe</th><th class="text-end">Piliers</th><th class="text-end">Actions</th></tr></thead>
              <tbody>
                <tr v-if="filteredMenaces.length === 0"><td colspan="6" class="text-center text-secondary">Aucune menace trouvee.</td></tr>
                <tr v-for="(menace, index) in filteredMenaces" :key="menace.id">
                  <td><strong>M{{ String(index + 1).padStart(2, '0') }}</strong></td>
                  <td>{{ menace.lib }}</td>
                  <td>{{ menace.groupe }}</td>
                  <td>{{ menace.axe }}</td>
                  <td class="text-end"><button class="btn btn-sm btn-light" type="button" @click="setActiveType('piliers'); selectMenace(menace.id)">{{ countPiliers(menace.id) }}</button></td>
                  <td class="text-end">
                    <button class="btn btn-sm btn-light table-action" type="button" title="Modifier" @click="openEdit('menaces', menace)"><i class="bi bi-pencil"></i></button>
                    <button class="btn btn-sm btn-light table-action" type="button" title="Supprimer" @click="removeMenace(menace)"><i class="bi bi-trash"></i></button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          <div v-else-if="activeType === 'piliers'" class="table-responsive">
            <table class="table align-middle mb-0">
              <thead><tr><th>Code</th><th>Pilier</th><th>Menace</th><th class="text-end">Exigences</th><th class="text-end">Actions</th></tr></thead>
              <tbody>
                <tr v-if="filteredPiliers.length === 0"><td colspan="5" class="text-center text-secondary">Aucun pilier trouve.</td></tr>
                <tr v-for="pilier in filteredPiliers" :key="pilier.id">
                  <td><strong>{{ pilier.code || 'P' + String(filteredPiliers.indexOf(pilier) + 1).padStart(2, '0') }}</strong></td>
                  <td>{{ pilier.lib }}</td>
                  <td>{{ menaces.find(menace => menace.id === pilier.menace_id)?.lib }}</td>
                  <td class="text-end"><button class="btn btn-sm btn-light" type="button" @click="setActiveType('exigences'); selectPilier(pilier.id)">{{ countExigences(pilier.id) }}</button></td>
                  <td class="text-end">
                    <button class="btn btn-sm btn-light table-action" type="button" title="Modifier" @click="openEdit('piliers', pilier)"><i class="bi bi-pencil"></i></button>
                    <button class="btn btn-sm btn-light table-action" type="button" title="Supprimer" @click="removePilier(pilier)"><i class="bi bi-trash"></i></button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          <div v-else class="table-responsive">
            <table class="table align-middle mb-0">
              <thead><tr><th>Code</th><th>Exigence</th><th>Pilier</th><th>Menace</th><th class="text-end">Actions</th></tr></thead>
              <tbody>
                <tr v-if="filteredExigences.length === 0"><td colspan="5" class="text-center text-secondary">Aucune exigence trouvee.</td></tr>
                <tr v-for="exigence in filteredExigences" :key="exigence.id">
                  <td><strong>{{ exigence.code || 'E' + String(filteredExigences.indexOf(exigence) + 1).padStart(2, '0') }}</strong></td>
                  <td>{{ exigence.lib }}</td>
                  <td>{{ piliers.find(pilier => pilier.id === exigence.pilier_id)?.lib }}</td>
                  <td>{{ menaces.find(menace => menace.id === piliers.find(pilier => pilier.id === exigence.pilier_id)?.menace_id)?.lib }}</td>
                  <td class="text-end">
                    <button class="btn btn-sm btn-light table-action" type="button" title="Modifier" @click="openEdit('exigences', exigence)"><i class="bi bi-pencil"></i></button>
                    <button class="btn btn-sm btn-light table-action" type="button" title="Supprimer" @click="removeExigence(exigence)"><i class="bi bi-trash"></i></button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </section>

      <div v-if="formOpen" class="modal fade show d-block" tabindex="-1" role="dialog" style="z-index: 1050" @click.self="formOpen = false">
        <div class="modal-dialog modal-dialog-centered modal-lg">
          <div class="modal-content">
            <form @submit.prevent="saveItem">
              <div class="modal-header">
                <h5 class="modal-title">{{ formTitle }}</h5>
                <button type="button" class="btn-close" aria-label="Fermer" @click="formOpen = false"></button>
              </div>
              <div class="modal-body">
                <template v-if="formType === 'menaces'">
                  <div class="mb-3">
                    <label class="form-label">Libelle</label>
                    <input v-model="form.lib" class="form-control" type="text" required>
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Groupe</label>
                    <input v-model="form.groupe" class="form-control" type="text">
                  </div>
                  <div class="mb-3">
                    <label class="form-label">Axe</label>
                    <select v-model="form.axe" class="form-select">
                      <option v-for="axe in axes" :key="axe" :value="axe">{{ axe }}</option>
                    </select>
                  </div>
                </template>

                <template v-else-if="formType === 'piliers'">
                  <div class="mb-3">
                    <label class="form-label">Libelle</label>
                    <input v-model="form.lib" class="form-control" type="text" required>
                  </div>
                  <div class="row g-3">
                    <div class="col-md-4">
                      <label class="form-label">Code</label>
                      <input v-model="form.code" class="form-control" type="text" placeholder="P01">
                    </div>
                    <div class="col-md-8">
                      <label class="form-label">Menace</label>
                      <select v-model="form.menace_id" class="form-select" :disabled="menaces.length === 0">
                        <option v-for="menace in menaces" :key="menace.id" :value="menace.id">{{ menaceLabel(menace) }}</option>
                      </select>
                    </div>
                  </div>
                </template>

                <template v-else>
                  <div class="mb-3">
                    <label class="form-label">Libelle</label>
                    <textarea v-model="form.lib" class="form-control" rows="3" required></textarea>
                  </div>
                  <div class="row g-3">
                    <div class="col-md-4">
                      <label class="form-label">Code</label>
                      <input v-model="form.code" class="form-control" type="text" placeholder="E01">
                    </div>
                    <div class="col-md-8">
                      <label class="form-label">Pilier</label>
                      <select v-model="form.pilier_id" class="form-select" :disabled="piliers.length === 0">
                        <option v-for="pilier in piliers" :key="pilier.id" :value="pilier.id">{{ pilierLabel(pilier) }}</option>
                      </select>
                    </div>
                  </div>
                  <div class="mb-3 mt-3">
                    <label class="form-label">Description (preuves attendues)</label>
                    <textarea v-model="form.description" class="form-control" rows="3"></textarea>
                  </div>
                </template>

                <div v-if="formError" class="alert alert-danger py-2 mb-0">{{ formError }}</div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-light" @click="formOpen = false">Annuler</button>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>
</template>