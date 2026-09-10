<template><div class="province-filter">
  <label for="provinceFilter">Province</label>
  <select v-model="store.STATES.province" class="form-select" id="provinceFilter" aria-label="Filtrer par province">
    <option v-for="(province, index) in store.CONSTANTES.province" :key="`home-province-${index}`" :value="province">
      {{ province }}
    </option>
  </select>
</div></template>

<script setup>
import { onMounted } from 'vue'
import { useStore } from '../../store'

const store = useStore()

onMounted(() => {
  if (!store.STATES.province && store.CONSTANTES.province.length > 0) {
    store.STATES.province = store.CONSTANTES.province[0]
  }
})
</script>