<script setup>
const model = defineModel()
defineProps({ code: String })
const key = crypto.randomUUID()
</script>

<template>
  <div class="response-toggle btn-group" role="group" :aria-label="`Cote ${code || ''} de 1 à 5`">
    <template v-for="cote in 5" :key="cote">
      <input
        v-model="model"
        type="radio"
        class="btn-check"
        :name="key"
        :id="`${key}_${cote}`"
        :value="cote"
        autocomplete="off"
      >
      <label class="btn btn-outline-primary" :for="`${key}_${cote}`">{{ cote }}</label>
    </template>
  </div>
</template>
