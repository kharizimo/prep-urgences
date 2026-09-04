import {defineStore} from 'pinia'
import {ref} from 'vue'

export const useStore = defineStore('main',()=>{
    const CONSTANTES = ref({
        niveau : ['Provinces','Zones de santé',"Point d'Entrée",'Aires de santé'],
        province : ['Kinshasa','Kwilu','Equateur','Nord-Kivu','Sud-Kivu'],
    })
    const STATES = ref({menace_id:'',niveau:'',province:''})

    return {CONSTANTES,STATES}
})