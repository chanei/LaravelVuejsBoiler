require('./bootstrap');

window.Vue = require('vue');
import App from './components/App.vue';
// import VueRouter from 'vue-router';

// Vue.use(VueRouter);

const app = new Vue({
    el: '#app',
    render: h => h(App),
});
