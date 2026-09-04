<template>
    <button type="button" class="btn btn-primary" @click="openModal()">
      Ouvrir la modale
    </button>
    <Modal ref="modalRef" @confirm="submit"><h1>TTTT</h1></Modal>
</template>
<script setup>
import { ref } from 'vue'
import Modal from '../components/Modal.vue'
const modalRef = ref(null)
function openModal() {
  modalRef.value?.showModal(()=>{
    alert('Modale ouverte !')
  })
}
function submit(){
    // alert('Formulaire soumis !')
}
</script>