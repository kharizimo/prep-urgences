<template>
  <article class="card h-100">
    <div class="card-body">
      <div class="section-title">
        <i class="bi bi-virus2"></i>
        <h3>Menaces &eacute;pid&eacute;miques</h3>
      </div>
      <div class="threat-list" id="threatList" aria-label="Liste des menaces &eacute;pid&eacute;miques">
        <div v-if="threats.length === 0" class="text-secondary">Aucune &eacute;valuation pour cette s&eacute;lection.</div>
        <button
          v-for="threat in threats"
          :key="threat.id"
          class="threat-item"
          :class="{ active: String(store.STATES.menace_id) === String(threat.id) }"
          type="button"
          :aria-pressed="String(store.STATES.menace_id) === String(threat.id)"
          @click="selectThreat(threat)"
        >
          <span>
            <strong>{{ threat.name }}</strong>
            <small>{{ threat.count }} &eacute;valuation{{ threat.count > 1 ? 's' : '' }}</small>
          </span>
        </button>
      </div>
    </div>
  </article>
</template>

<script setup>
import { computed, onMounted, ref, watch } from 'vue'
import { db } from '../../db'
import { useStore } from '../../store'
import { latestValidEvaluations } from '../../consolidation'

const store = useStore()
const evaluations = ref([])

const threats = computed(() => {
  const matchingEvaluations = latestValidEvaluations(evaluations.value).filter(evaluation => {
    const matchesProvince = !store.STATES.province || evaluation.province === store.STATES.province
    const matchesAxe = !store.STATES.axe || evaluation.axe === store.STATES.axe
    return matchesProvince && matchesAxe && evaluation.menace_lib
  })

  const groupedThreats = new Map()
  matchingEvaluations.forEach(evaluation => {
    const id = evaluation.menace_id || evaluation.menace_lib
    const threat = groupedThreats.get(id) || { id, name: evaluation.menace_lib, count: 0 }
    threat.count += 1
    groupedThreats.set(id, threat)
  })

  return [...groupedThreats.values()]
})

const selectThreat = (threat) => {
  store.STATES.menace_id = threat.id
}

watch(threats, currentThreats => {
  const selectedThreatExists = currentThreats.some(threat =>
    String(threat.id) === String(store.STATES.menace_id)
  )

  if (currentThreats.length > 0 && !selectedThreatExists) {
    selectThreat(currentThreats[0])
  }
}, { immediate: true })

onMounted(async () => {
  evaluations.value = await db.evaluations.toArray()
})
</script>