import {createRouter, createWebHistory} from 'vue-router'
import Home from './pages/HomePage.vue'
import Evaluations from './pages/Evaluations.vue'
import EvaluationDetail from './pages/EvaluationDetail.vue'
import Test from './pages/Test.vue'

const routes = [
    {path:'/',component:Home},
    {path:'/evaluations',component:Evaluations},
    {path:'/evaluation/:id',component:EvaluationDetail},
    {path:'/test',component:Test},
]

export const router = createRouter({
    history:createWebHistory(),
    routes
})
