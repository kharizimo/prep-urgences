<template>
  <article class="card">
    <div class="card-body">
      <div class="section-title evaluation-title">
        <span>
          <i class="bi bi-clipboard2-check"></i>
          <h3>Evaluations</h3>
        </span>
        <small id="evaluationScopeLabel">Axe {{ store.STATES.axe || 'Tous' }}</small>
      </div>
      <div class="table-responsive">
        <table class="table align-middle mb-0">
          <thead>
            <tr>
              <th>Province</th>
              <th>Menace</th>
              <th>P&eacute;riode</th>
              <th>Entit&eacute;</th>
              <th class="text-end">Participants</th>
              <th class="text-end">Score</th>
              <th class="text-end">D&eacute;tails</th>
            </tr>
          </thead>
          <tbody id="recentEvaluations">
            <tr v-if="filteredEvaluations.length === 0">
              <td colspan="7" class="text-center text-secondary">
                Aucune &eacute;valuation pour cette s&eacute;lection.
              </td>
            </tr>
            <tr
              v-for="evaluation in filteredEvaluations"
              :key="evaluation.id"
              class="evaluation-row"
              tabindex="0"
            >
              <td><strong>{{ evaluation.province }}</strong></td>
              <td>{{ evaluation.menace_lib }}</td>
              <td>{{ evaluation.periode }}</td>
              <td>{{ evaluation.entite }}</td>
              <td class="text-end">{{ evaluation.participants }}</td>
              <td class="text-end">
                <span class="score-badge" :class="scoreClass(evaluation.score)">
                  {{ Number(evaluation.score) || 0 }}%
                </span>
              </td>
              <td class="text-end">
                <RouterLink
                  class="btn btn-sm btn-light details-btn"
                  :to="`/evaluation/${evaluation.id}`"
                  aria-label="Voir les details"
                >
                  <i class="bi bi-eye"></i>
                </RouterLink>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </article>
</template>

<script setup>
import { computed, onMounted, ref } from 'vue'
import { db } from '../../db'
import { useStore } from '../../store'
import { latestValidEvaluations } from '../../consolidation'

const store = useStore()
const evaluations = ref([])

const filteredEvaluations = computed(() => latestValidEvaluations(evaluations.value).filter(evaluation => {
  const matchesProvince = !store.STATES.province || evaluation.province === store.STATES.province
  const matchesAxe = !store.STATES.axe || evaluation.axe === store.STATES.axe
  const matchesThreat = !store.STATES.menace_id ||
    String(evaluation.menace_id) === String(store.STATES.menace_id)

  return matchesProvince && matchesAxe && matchesThreat
}))

const scoreClass = score => {
  const value = Number(score) || 0
  if (value < 65) return 'status-low'
  if (value <= 85) return 'status-mid'
  return 'status-good'
}

onMounted(async () => {
  evaluations.value = await db.evaluations.toArray()
})
</script>
