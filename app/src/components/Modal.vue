<script setup>
import { ref, onMounted, onUnmounted } from 'vue'
import Modal from 'bootstrap/js/dist/modal'

const modalRef = ref(null)
let modalInstance = null

onMounted(() => {
  if (modalRef.value) {
    modalInstance = new Modal(modalRef.value)
  }
})

onUnmounted(() => {
  modalInstance?.dispose()
})

const showModal = (fn=undefined) => {
    if(fn) fn()
    modalInstance?.show()
}
const hideModal = () => modalInstance?.hide()

defineExpose({ showModal, hideModal })
const emit = defineEmits(['confirm'])
const handleConfirm = () => {
    hideModal()
    emit('confirm')
}
</script>

<template>
  <div ref="modalRef" class="modal modal-lg fade" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">
            <slot name="title">Titre de la modale</slot>
          </h5>
          <button type="button" class="btn-close" @click="hideModal" aria-label="Close"></button>
        </div>

        <div class="modal-body">
          <slot></slot>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" @click="hideModal">Fermer</button>
          <button type="button" class="btn btn-primary" @click="handleConfirm">Valider</button>
        </div>
      </div>
    </div>
  </div>
</template>