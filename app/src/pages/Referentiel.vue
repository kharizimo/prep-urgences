<script setup>
import { computed, onMounted, ref } from 'vue'
import { db } from '../db'

const activeType = ref('menaces')
const search = ref('')
const selectedMenaceId = ref('')
const selectedPilierId = ref('')
const menaces = ref([])
const piliers = ref([])
const exigences = ref([])

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

const filteredMenaces = computed(() => menaces.value.filter(menace => {
  if (!normalizedSearch.value) return true
  return [menace.lib, menace.groupe, menace.axe].some(value =>
    String(value ?? '').toLocaleLowerCase().includes(normalizedSearch.value)
  )
}))

const filteredPiliers = computed(() => piliers.value.filter(pilier => {
  const matchesMenace = !selectedMenaceId.value ||
    String(pilier.menace_id) === String(selectedMenaceId.value)
  const matchesSearch = !normalizedSearch.value ||
    String(pilier.lib ?? '').toLocaleLowerCase().includes(normalizedSearch.value)
  return matchesMenace && matchesSearch
}))

const filteredExigences = computed(() => exigences.value.filter(exigence => {
  const matchesPilier = !selectedPilierId.value ||
    String(exigence.pilier_id) === String(selectedPilierId.value)
  const matchesSearch = !normalizedSearch.value ||
    String(exigence.lib ?? '').toLocaleLowerCase().includes(normalizedSearch.value)
  return matchesPilier && matchesSearch
}))

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

onMounted(async () => {
  const [menaceRows, pilierRows, exigenceRows] = await Promise.all([
    db.menaces.toArray(),
    db.piliers.toArray(),
    db.exigences.toArray()
  ])

  menaces.value = menaceRows
  piliers.value = pilierRows
  exigences.value = exigenceRows
  selectMenace(menaceRows[0]?.id || '')
})
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
                <option v-for="pilier in selectedPiliers" :key="pilier.id" :value="pilier.id">{{ pilier.lib }}</option>
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
          <div class="section-title">
            <i class="bi bi-list-check"></i>
            <h3>{{ activeType === 'menaces' ? 'Menaces' : activeType === 'piliers' ? 'Piliers' : 'Exigences' }}</h3>
          </div>

          <div v-if="activeType === 'menaces'" class="table-responsive">
            <table class="table align-middle mb-0">
              <thead><tr><th>Code</th><th>Menace</th><th>Groupe</th><th>Axe</th><th class="text-end">Piliers</th></tr></thead>
              <tbody>
                <tr v-if="filteredMenaces.length === 0"><td colspan="5" class="text-center text-secondary">Aucune menace trouvee.</td></tr>
                <tr v-for="menace in filteredMenaces" :key="menace.id">
                  <td><strong>M{{ String(menace.id).padStart(2, '0') }}</strong></td>
                  <td>{{ menace.lib }}</td>
                  <td>{{ menace.groupe }}</td>
                  <td>{{ menace.axe }}</td>
                  <td class="text-end"><button class="btn btn-sm btn-light" type="button" @click="setActiveType('piliers'); selectMenace(menace.id)">{{ countPiliers(menace.id) }}</button></td>
                </tr>
              </tbody>
            </table>
          </div>

          <div v-else-if="activeType === 'piliers'" class="table-responsive">
            <table class="table align-middle mb-0">
              <thead><tr><th>Code</th><th>Pilier</th><th>Menace</th><th class="text-end">Exigences</th></tr></thead>
              <tbody>
                <tr v-if="filteredPiliers.length === 0"><td colspan="4" class="text-center text-secondary">Aucun pilier trouve.</td></tr>
                <tr v-for="pilier in filteredPiliers" :key="pilier.id">
                  <td><strong>P{{ String(pilier.id).padStart(2, '0') }}</strong></td>
                  <td>{{ pilier.lib }}</td>
                  <td>{{ menaces.find(menace => menace.id === pilier.menace_id)?.lib }}</td>
                  <td class="text-end"><button class="btn btn-sm btn-light" type="button" @click="setActiveType('exigences'); selectPilier(pilier.id)">{{ countExigences(pilier.id) }}</button></td>
                </tr>
              </tbody>
            </table>
          </div>

          <div v-else class="table-responsive">
            <table class="table align-middle mb-0">
              <thead><tr><th>Code</th><th>Exigence</th><th>Pilier</th><th>Menace</th></tr></thead>
              <tbody>
                <tr v-if="filteredExigences.length === 0"><td colspan="4" class="text-center text-secondary">Aucune exigence trouvee.</td></tr>
                <tr v-for="exigence in filteredExigences" :key="exigence.id">
                  <td><strong>E{{ String(exigence.id).padStart(2, '0') }}</strong></td>
                  <td>{{ exigence.lib }}</td>
                  <td>{{ piliers.find(pilier => pilier.id === exigence.pilier_id)?.lib }}</td>
                  <td>{{ menaces.find(menace => menace.id === piliers.find(pilier => pilier.id === exigence.pilier_id)?.menace_id)?.lib }}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </section>
    </div>
  </main>
</template>
