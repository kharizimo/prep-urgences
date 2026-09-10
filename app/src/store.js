import {defineStore} from 'pinia'
import {ref} from 'vue'

export const useStore = defineStore('main',()=>{
    const CONSTANTES = ref({
        axe : ['Global','Hôpital préparé','Rapide'],
        niveau : ['DPS','Zones de santé',"Point d'Entrée",'Aires de santé'],
        province : ['Niveau Central','Kinshasa','Kwilu','Equateur','Nord-Kivu','Sud-Kivu'],
    })
    const STATES = ref({menace_id:'',niveau:'',province:'',entite:'',axe:''})

    return {CONSTANTES,STATES}
})