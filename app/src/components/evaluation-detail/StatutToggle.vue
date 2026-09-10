<template><div class="response-toggle btn-group" role="group" aria-label="Reponse E01">
  <input v-model="model" type="radio" class="btn-check" :name="`${key}`" :id="`${key}_oui`" value="OUI" autocomplete="off">
  <label class="btn btn-outline-success" :for="`${key}_oui`">OUI</label>
  <input v-model="model" type="radio" class="btn-check" :name="`${key}`" :id="`${key}_non`" value="NON" autocomplete="off">
  <label class="btn btn-outline-danger" :for="`${key}_non`">NON</label>
  <input v-model="model" type="radio" class="btn-check" :name="`${key}`" :id="`${key}_na`" value="N/A" autocomplete="off">
  <label class="btn btn-outline-secondary" :for="`${key}_na`">N/A</label>
</div></template>
<script setup>
import {ref} from 'vue'
const key = crypto.randomUUID()
const model = defineModel()
</script>