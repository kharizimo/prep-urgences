import {createRouter, createWebHistory} from 'vue-router'
import Home from './pages/HomePage.vue'
import Evaluations from './pages/Evaluations.vue'
import Test from './pages/Test.vue'

const routes = [
    {path:'/',component:Home},
    {path:'/evaluations',component:Evaluations},
    {path:'/test',component:Test},
]

export const router = createRouter({
    history:createWebHistory(),
    routes
})
