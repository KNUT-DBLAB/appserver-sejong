import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify'
import { loadFonts } from './plugins/webfontloader'

// import "bootstrap/dist/css/bootstrap.min.css"
// import "bootstrap/dist/js/bootstrap.js"
// import TableLite from "vue3-table-lite";
// import TableLite from "vue3-table-lite/ts"; // TypeScript

loadFonts()

createApp(App)
  .use(router)
  .use(store)
  .use(vuetify)
  .mount('#app')
