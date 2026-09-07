<script setup>
import Filtre from '../components/evaluations/Filtre.vue';
import FormView from '../components/evaluations/FormView.vue';
import { db } from '../db.js';
import { ref, onMounted } from 'vue';
const formToggle = ref(false)
const dataTable = ref([])
const loadTable=async()=>{
  dataTable.value=await db.evaluations.toArray()
}
onMounted(async()=>{
  await loadTable()
})
</script>

<template>
  <teleport to="#custom-btn">
    <button class="btn btn-success" type="button" @click="formToggle = !formToggle">Nouvelle evaluation</button>
  </teleport>
  <FormView v-show="formToggle" />
  <Filtre />
  <section class="card">
    <div class="card-body">
      <div class="evaluations-toolbar">
        <div class="section-title mb-0">
          <i class="bi bi-list-check"></i>
          <h3>Liste des evaluations</h3>
        </div>
        <div class="evaluations-search input-group">
          <span class="input-group-text"><i class="bi bi-search"></i></span>
          <input class="form-control" id="evaluationSearch" type="search" placeholder="Rechercher">
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
              <tr class="evaluation-row" v-for="(t,k) in dataTable">
                <td>{{ t.axe }}</td>
                <td>{{ t.menace_lib }}</td>
                <td>{{ t.niveau }}</td>
                <td>{{ t.province }}</td>
                <td>{{ t.entite }}</td>
                <td>{{ t.periode }}</td>
                <td>{{ t.score }}%</td>
                
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>
  
</template>