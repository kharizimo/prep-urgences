<template><div class="row">
    <div class="col-6 col-md-3">
      <article class="card metric-card">
        <i class="bi bi-clipboard2-check text-primary" aria-hidden="true"></i>
        <span>{{ indicators.total }}</span>
        <small>Total evaluations</small>
      </article>
    </div>
    <div class="col-6 col-md-3">
      <article class="card metric-card">
        <i class="bi bi-exclamation-triangle text-danger" aria-hidden="true"></i>
        <span>{{ indicators.low }}</span>
        <small>Alerte rouge</small>
      </article>
    </div>
    <div class="col-6 col-md-3">
      <article class="card metric-card">
        <i class="bi bi-hourglass-split text-warning" aria-hidden="true"></i>
        <span>{{ indicators.medium }}</span>
        <small>Suivi rapproché</small>
      </article>
    </div>
    <div class="col-6 col-md-3">
      <article class="card metric-card">
        <i class="bi bi-check-circle text-success" aria-hidden="true"></i>
        <span>{{ indicators.high }}</span>
        <small>Conforme</small>
      </article>
    </div>
</div></template>

<script setup>
import { computed, onMounted, ref } from 'vue'
import { db } from '../../db'
import { useStore } from '../../store'

const store = useStore()
const evaluations = ref([])

const matchingEvaluations = computed(() => evaluations.value.filter(evaluation => {
  const matchesProvince = !store.STATES.province || evaluation.province === store.STATES.province
  const matchesAxe = !store.STATES.axe || evaluation.axe === store.STATES.axe
  const matchesMenace = !store.STATES.menace_id ||
    String(evaluation.menace_id) === String(store.STATES.menace_id)

  return matchesProvince && matchesAxe && matchesMenace
}))

const indicators = computed(() => {
  const scores = matchingEvaluations.value.map(evaluation => Number(evaluation.score) || 0)

  return {
    total: scores.length,
    low: scores.filter(score => score < 65).length,
    medium: scores.filter(score => score >= 65 && score <= 85).length,
    high: scores.filter(score => score > 85).length
  }
})

onMounted(async () => {
  evaluations.value = await db.evaluations.toArray()
})
</script>