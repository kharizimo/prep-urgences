<script setup>
import Filtre from '../components/evaluations/Filtre.vue';
import FormView from '../components/evaluations/FormView.vue';
import { db } from '../db.js';
import { computed, ref, onMounted } from 'vue';
import { useStore } from '../store';

const store = useStore()
const formToggle = ref(false)
const dataTable = ref([])
const search = ref('')
const loadTable=async()=>{
  dataTable.value=await db.evaluations.toArray()
}
const filteredDataTable = computed(() => {
  const filters = store.STATES
  const query = search.value.trim().toLocaleLowerCase()

  return dataTable.value.filter(evaluation => {
    const matchesFilters = [
      ['axe', filters.axe],
      ['niveau', filters.niveau],
      ['province', filters.province],
      ['entite', filters.entite]
    ].every(([field, value]) => !value || evaluation[field] === value)

    const searchableValues = [
      evaluation.axe,
      evaluation.menace_lib,
      evaluation.niveau,
      evaluation.province,
      evaluation.entite,
      evaluation.periode,
      evaluation.score
    ]
    const matchesSearch = !query || searchableValues.some(value =>
      String(value ?? '').toLocaleLowerCase().includes(query)
    )

    return matchesFilters && matchesSearch
  })
})
onMounted(async()=>{
  await loadTable()
})
</script>

<template>
  <teleport to="#custom-btn">
    <button class="btn btn-success" type="button" @click="formToggle = !formToggle">Nouvelle evaluation</button>
  </teleport>
  <FormView v-show="formToggle" />
  <Filtre :evaluations="dataTable" />
  <section class="card">
    <div class="card-body">
      <div class="evaluations-toolbar">
        <div class="section-title mb-0">
          <i class="bi bi-list-check"></i>
          <h3>Liste des evaluations</h3>
        </div>
        <div class="evaluations-search input-group">
          <span class="input-group-text"><i class="bi bi-search"></i></span>
          <input v-model="search" class="form-control" id="evaluationSearch" type="search" placeholder="Rechercher" aria-label="Rechercher une evaluation">
        </div>
      </div>
      <div class="table-responsive">
        <table class="table align-middle mb-0">
          <thead>
            <tr>
              <th>Axe</th>
              <th>Menace</th>
              <th>Niveau</th>
              <th>Province</th>
              <th>Entite</th>
              <th>Periode</th>
              <th class="text-end">Score</th>
              <th width="1%"></th>
            </tr>
          </thead>
          <tbody>
              <tr class="evaluation-row" v-for="t in filteredDataTable" :key="t.id">
                <td>{{ t.axe }}</td>
                <td>{{ t.menace_lib }}</td>
                <td>{{ t.niveau }}</td>
                <td>{{ t.province }}</td>
                <td>{{ t.entite }}</td>
                <td>{{ t.periode }}</td>
                <td>{{ t.score }}%</td>
                <td class="text-end">
                  <RouterLink class="btn btn-sm btn-light table-action details-btn" type="button" :to="`/evaluation/${t.id}`">
                    <i class="bi bi-eye"></i>
                  </RouterLink>
                </td>
              </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>
  
</template>