import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Login from './components/xz/Login.vue'
import Product from './components/xz/Product.vue'
import Cart from './components/xz/Cart.vue'
import A from './components/Vuex/A.vue'
import B from './components/Vuex/B.vue'
import Index from './components/xiaozhu/Index.vue'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/Index',component:Index},
    {path:'/Login',component:Login},
    {path:'/Product',component:Product},
    {path:'/Cart',component:Cart},
    {path:'/B',component:B},
    {path:'/A',component:A},
   
  ]
})
