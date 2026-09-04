import { createApp } from 'vue'
import { router } from './route.js'
import { createPinia } from 'pinia'

import App from './App.vue'
const app = createApp(App)
app.use(router)
app.use(createPinia())
app.mount('#app')
