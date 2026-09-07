<template>
    <section class="card evaluation-filters mb-3">
      <div class="card-body">
        <div class="section-title">
          <i class="bi bi-funnel"></i>
          <h3>Filtres</h3>
        </div>
        <div class="evaluation-filter-grid">
          <div>
            <label class="form-label" for="filterLevel">Niveau</label>
            <select class="form-select" v-model="store.STATES.niveau">
                <option value="">Toutes les niveaux</option>
                <option v-for="(t, i) in store.CONSTANTES.niveau" :key="`niveau-${i}`" :value="t">{{ t }}</option>
            </select>
          </div>
          <div>
            <label class="form-label" for="filterProvince">Province</label>
            <select class="form-select" v-model="store.STATES.province">
              <option value="">Toutes les provinces</option>
              <option v-for="(t, i) in store.CONSTANTES.province" :key="`province-${i}`" :value="t">{{ t }}</option>
            </select>
          </div>
          <div>
            <label class="form-label" for="filterEntity">Entit&eacute;</label>
            <select class="form-select" :disabled="EntiteDisabled">
              <option value="">Toutes les entit&eacute;s</option>
            </select>
          </div>
        </div>
      </div>
    </section>
</template>

<script setup>
import { useStore } from '../../store';
import { ref, computed } from 'vue';

const store = useStore()
const EntiteDisabled = computed(() => ['Provinces'].includes(store.STATES.niveau))



</script>
    
