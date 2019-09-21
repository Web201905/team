import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
//引入第三方组件库  
import MintUI from 'mint-ui'
import VDistpicker from 'v-distpicker'
Vue.use(VDistpicker);
import Vant from 'vant';
import 'vant/lib/index.css';

Vue.use(Vant);
//单独引入mint-ui样式文件
import "mint-ui/lib/style.css"
import "./font/iconfont.css"
import Vuex from 'vuex'
//配置请示求保存session信息
axios.defaults.withCredentials=true
axios.defaults.baseURL="http://127.0.0.1:8080"
//注册axios
Vue.prototype.axios=axios;
//注册MintUI
Vue.use(MintUI)
//1使用Vuex保存共享数据
//2注册实例(先注册再创建存储对象)
Vue.use(Vuex)
//3创建存储对象
var store=new Vuex.Store({
  state:{//集中管理数据方法
    age:23,
    list:[1,2,3,4],
    car:"WEY VV7"
  },
  getters:{//集中获取数据函数
    getAge(state){//特殊:所有函数都有参数
      return state.age
    },
    getList(state){
      return state.list
    },
    getCar(state){
      return state.car
    }
  },
  mutations:{//集中修改数据函数属性
    clear(state){
      state.age=0;
    },
    updateCar(state){
      state.car="奔驰"
    },
    //修改函数:调用修改年龄函数传参数
    updateAge(state,age){
      state.age=age
    }
  },
  actions:{//集中保存异步修改数据函数
    modifyAge:(context)=>{//异步调用clear
      setTimeout(()=>{
        //异步调用mutations中定义函数
        //完成异步修改数据功能
        context.commit("clear")
      },500)
    }
  }
})
//4将存储对象添加Vue实例作为属性
new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')
