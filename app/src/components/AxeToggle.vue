<template><div class="axis-toggle btn-group" role="group" aria-label="Filtrer les axes">
    <template v-for="(t,k) in props.axes" :key="k">
        <input type="radio" class="btn-check" v-model="model" :id="`axis-${k}`" :value="t" :checked="k===0">
        <label class="btn btn-outline-primary" :for="`axis-${k}`">{{ t }}</label>
    </template>
</div></template>
<script setup>
const props=defineProps({axes:{type:Array,required:true}});
const model=defineModel()
</script>