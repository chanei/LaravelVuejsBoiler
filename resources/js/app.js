require('./bootstrap');

window.Vue = require('vue');
import App from './components/App.vue';
import router from "./routes";

const app = new Vue({
    el: '#app',
    router,
    render: h => h(App),
});
