<template>
    <div class="card mb-3">
        <div class="card-header"><div class="card-title">Nouvelle Evaluation</div></div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group mb-3">
                        <label class="form-label">Menace</label>
                        <select class="form-select" v-model="formData.menace">
                                <option v-for="(menace,k) in lists.menaces" :key="k" :value="{id:menace.id,lib:menace.lib}">
                                {{ menace.lib }}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group mb-3">
                        <label class="form-label">Niveau</label>
                        <select class="form-select" v-model="formData.niveau">
                            <option v-for="(t,k) in store.CONSTANTES.niveau" :key="k" :value="t">
                                {{ t }}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group mb-3">
                        <label class="form-label">Province</label>
                        <select class="form-select" v-model="formData.province">
                            <option v-for="(t,k) in store.CONSTANTES.province" :key="k" :value="t">
                                {{ t }}
                            </option>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group mb-3">
                        <label class="form-label">Entité</label>
                        <input type="text" class="form-control" v-model="formData.entite">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="" class="form-label">Période</label>
                    <input type="text" class="form-control" v-model="formData.periode">
                </div>
                <div class="col-md-8 mb-3">
                    <label for="" class="form-label">Participants</label>
                    <input type="text" class="form-control" v-model="formData.participants">
                </div>
                <div class="col-md-12 mb-3">
                    <label for="" class="form-label">Commentaires</label>
                    <textarea class="form-control" v-model="formData.commentaires"></textarea>
                </div>
            </div>
        </div>
        <div class="card-footer text-end">
            <button class="btn btn-primary" @click="handleSubmit">Enregistrer</button>
        </div>
    </div>
</template>
<script setup>
import { ref,onMounted, toRaw } from 'vue'
import {useRouter} from 'vue-router'
import {useStore} from '../../store'
import {db} from '../../db'
const store = useStore()
const router = useRouter()
const formData = ref({
    id:'',
    axe:'',
    menace:{id:'',lib:''},
    menace_lib: '',
    menace_id: '',
    niveau: '',
    province: '',
    entite: '',
    periode: '',
    participants: '',
    commentaires: ''
})
const lists=ref({
    menaces:[]
})
const handleSubmit = async() => {
    console.log('Form data:', formData.value)
    formData.value.id=crypto.randomUUID()
    formData.value.axe=store.STATES.axe
    formData.value.create_at=new Date().toISOString(),
    formData.value.score=0
    formData.value.menace_id=formData.value.menace.id
    formData.value.menace_lib=formData.value.menace.lib
    await db.evaluations.add(toRaw(formData.value))
    router.push(`/evaluation/${formData.value.id}`)
}
onMounted(async()=>{
    lists.value.menaces = await db.menaces.toArray()
})

</script>