<template>
  <article class="card h-100">
    <div class="card-body">
      <div class="section-title">
        <i class="bi bi-columns-gap"></i>
        <h3>Scores globaux par pilier</h3>
      </div>
      <div class="pillar-list" id="pillarScores">
        <div v-if="pillars.length === 0" class="text-secondary">
          Aucun pilier pour cette s&eacute;lection.
        </div>
        <div v-for="pillar in pillars" :key="pillar.id" class="pillar-row">
          <div class="pillar-head">
            <span>{{ pillar.name }}</span>
            <strong>{{ pillar.score }}%</strong>
          </div>
          <div
            class="progress"
            role="progressbar"
            :aria-valuenow="pillar.score"
            aria-valuemin="0"
            aria-valuemax="100"
            :aria-label="`Score ${pillar.name}`"
          >
            <div
              class="progress-bar"
              :class="progressClass(pillar.score)"
              :style="{ width: `${pillar.score}%` }"
            ></div>
          </div>
        </div>
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
const evaluationPillars = ref([])

const filteredEvaluationIds = computed(() => new Set(
  latestValidEvaluations(evaluations.value)
    .filter(evaluation => {
      const matchesProvince = !store.STATES.province || evaluation.province === store.STATES.province
      const matchesAxe = !store.STATES.axe || evaluation.axe === store.STATES.axe
      const matchesThreat = !store.STATES.menace_id ||
        String(evaluation.menace_id) === String(store.STATES.menace_id)

      return matchesProvince && matchesAxe && matchesThreat
    })
    .map(evaluation => evaluation.id)
))

const pillars = computed(() => {
  const groupedPillars = new Map()

  evaluationPillars.value
    .filter(pillar => filteredEvaluationIds.value.has(pillar.evaluation_id))
    .forEach(pillar => {
      const id = pillar.pilier_id
      const current = groupedPillars.get(id) || {
        id,
        code: pillar.code,
        name: pillar.lib || `Pilier ${id}`,
        scores: []
      }
      const score = Number(pillar.score)

      if (Number.isFinite(score)) {
        current.scores.push(score)
      }
      groupedPillars.set(id, current)
    })

  return [...groupedPillars.values()]
    .sort((a, b) => String(a.code).localeCompare(String(b.code), undefined, { numeric: true }))
    .map(pillar => ({
    id: pillar.id,
    name: pillar.name,
    score: pillar.scores.length > 0
      ? Math.round(pillar.scores.reduce((total, score) => total + score, 0) / pillar.scores.length)
      : 0
  }))
})

const progressClass = score => {
  if (score < 65) return 'bg-danger'
  if (score <= 85) return 'bg-warning'
  return 'bg-success'
}

onMounted(async () => {
  const [evaluationRows, pillarRows] = await Promise.all([
    db.evaluations.toArray(),
    db.evaluation_piliers.toArray()
  ])
  evaluations.value = evaluationRows
  evaluationPillars.value = pillarRows
})
</script>
