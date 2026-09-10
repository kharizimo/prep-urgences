<template><div class="axis-toggle btn-group" role="group" aria-label="Filtrer les axes">
    <input type="radio" value="Global" id="axis-global" class="btn-check" v-model="store.STATES.axe">
    <label for="axis-global" class="btn btn-outline-primary">Global</label>
    <input type="radio" value="Hopital" id="axis-hopital" class="btn-check" v-model="store.STATES.axe">
    <label for="axis-hopital" class="btn btn-outline-primary">Hôpital préparé</label>
    <input type="radio" value="Rapide" id="axis-rapide" class="btn-check" v-model="store.STATES.axe">
    <label for="axis-rapide" class="btn btn-outline-success">Rapide</label>
</div></template>
<script setup>
import {ref,onMounted} from 'vue'
import { useStore } from '../store';
const store = useStore()
onMounted(()=>{
    store.STATES.axe=store.CONSTANTES.axe[0]
})
</script>