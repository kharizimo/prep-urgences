<template>
  <article class="card score-card">
    <div class="card-body">
      <div class="d-flex align-items-start justify-content-between mb-3">
        <div>
          <p class="text-secondary small mb-1">Niveau de pr&eacute;paration</p>
          <h2 class="h5 mb-0">{{ selectedLevel }}</h2>
        </div>
        <span class="status-chip" :class="scoreStatus.class">{{ scoreStatus.label }}</span>
      </div>
      <div class="score-layout">
        <div
          class="score-ring"
          :style="{ '--score': selectedScore, '--score-color': scoreStatus.color }"
          :aria-label="`Score ${selectedLevel}`"
        >
          <span>{{ selectedScore }}%</span>
        </div>
        <div class="score-copy">
          <p class="mb-2">Score moyen des &eacute;valuations correspondant aux filtres s&eacute;lectionn&eacute;s.</p>
          <div class="mini-grid">
            <button
              v-for="level in levels"
              :key="level"
              :class="['mini-score', scoreClass(scoreForLevel(level)), { active: level === selectedLevel }]"
              type="button"
              :aria-pressed="level === selectedLevel"
              @click="selectLevel(level)"
            >
              <span>{{ scoreForLevel(level) }}%</span>
              <small>{{ level }}</small>
            </button>
          </div>
        </div>
      </div>
    </div>
  </article>
</template>

<script setup>
import { computed, onMounted, ref, watch } from 'vue'
import { db } from '../../db'
import { useStore } from '../../store'

const store = useStore()
const evaluations = ref([])
const selectedLevel = ref(store.CONSTANTES.niveau[0] || '')
const levels = computed(() => store.CONSTANTES.niveau)

const matchingEvaluations = computed(() => evaluations.value.filter(evaluation => {
  const matchesProvince = !store.STATES.province || evaluation.province === store.STATES.province
  const matchesAxe = !store.STATES.axe || evaluation.axe === store.STATES.axe
  const matchesMenace = !store.STATES.menace_id ||
    String(evaluation.menace_id) === String(store.STATES.menace_id)

  return matchesProvince && matchesAxe && matchesMenace
}))

const scoreForLevel = level => {
  const scores = matchingEvaluations.value
    .filter(evaluation => evaluation.niveau === level)
    .map(evaluation => Number(evaluation.score))
    .filter(score => Number.isFinite(score))

  if (scores.length === 0) return 0
  return Math.round(scores.reduce((total, score) => total + score, 0) / scores.length)
}

const selectedScore = computed(() => scoreForLevel(selectedLevel.value))
const scoreStatus = computed(() => {
  if (selectedScore.value < 65) return { label: 'Alerte rouge', class: 'status-low', color: '#dc3545' }
  if (selectedScore.value <= 85) return { label: 'Partiel', class: 'status-mid', color: '#ed8f03' }
  return { label: 'Conforme', class: 'status-good', color: '#198754' }
})

const scoreClass = level => {
  if (scoreForLevel(level) < 65) return 'status-low'
  if (scoreForLevel(level) <= 85) return 'status-mid'
  return 'status-good'
}

const selectLevel = level => {
  selectedLevel.value = level
}

watch(levels, currentLevels => {
  if (!currentLevels.includes(selectedLevel.value)) {
    selectedLevel.value = currentLevels[0] || ''
  }
}, { immediate: true })

onMounted(async () => {
  evaluations.value = await db.evaluations.toArray()
})
</script>

<style scoped>
.mini-score {
  border: 1px solid #e9eef6;
  border-radius: 8px;
  cursor: pointer;
  font: inherit;
  padding: .75rem;
  text-align: left;
  transition: box-shadow .2s ease, transform .2s ease;
  width: 100%;
}

.mini-score:hover,
.mini-score.active {
  box-shadow: 0 0 0 2px var(--primary);
  transform: translateY(-1px);
}

.mini-score:focus-visible {
  outline: 2px solid var(--primary);
  outline-offset: 2px;
}

.mini-score span,
.mini-score small {
  display: block;
}

.mini-score span {
  font-weight: bold;
}

.mini-score small {
  color: var(--muted);
  font-size: .74rem;
}
</style>