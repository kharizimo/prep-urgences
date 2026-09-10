import {createRouter, createWebHistory} from 'vue-router'
import Home from './pages/HomePage.vue'
import Evaluations from './pages/Evaluations.vue'
import EvaluationDetail from './pages/EvaluationDetail.vue'
import Test from './pages/Test.vue'
import NotFound from './pages/NotFound.vue'
import Referentiel from './pages/Referentiel.vue'
import Login from './pages/Login.vue'

const routes = [
    {path:'/',component:Home},
    {path:'/evaluations',component:Evaluations},
    {path:'/evaluation/:id',component:EvaluationDetail},
    {path:'/referentiel',component:Referentiel},
    {path:'/login',component:Login,params:{auth:false}},
    {path:'/test',component:Test},
    {path: '/:pathMatch(.*)*',name: 'NotFound',component: NotFound}
]

export const router = createRouter({
    history:createWebHistory(),
    routes
})
