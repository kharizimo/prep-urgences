<template><div class="axis-toggle btn-group" role="group" aria-label="Filtrer les axes">
    <template v-for="(t,k) in store.CONSTANTES.axe" :key="k">
        <input type="radio" class="btn-check" v-model="store.STATES.axe" :id="`axis-${k}`" :value="t" :checked="k===0">
        <label class="btn btn-outline-primary" :for="`axis-${k}`">{{ t }}</label>
    </template>
</div></template>
<script setup>
import {ref,onMounted} from 'vue'
import { useStore } from '../store';
const store = useStore()
onMounted(()=>{
    store.STATES.axe=store.CONSTANTES.axe[0]
})
</script>