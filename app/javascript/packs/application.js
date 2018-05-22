import TurbolinksAdapter from 'vue-turbolinks';
import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'
import Subreddit from '../components/Subreddit.vue'

Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behavior="vue"]',
    components: { App, Subreddit }
  })
})
