<template>
<div>
  <h1>A.vue 演示使用Vuex中集中保存数据</h1>
  <h1>成亮的年龄{{$store.getters.getAge}}</h1>
  <h1>{{$store.getters.getList}}</h1>
  <h1>座驾:{{$store.getters.getCar}}</h1>
  <button @click="upCar">成亮换了车</button>
  <button @click="upAge">成亮年轻了</button>
</div>
</template>
<script>
export default {
  methods:{
    upCar(){
      this.$store.commit("updateCar")
    },
    upAge(){
      this.$store.commit("updateAge",18)
    }
  }
}
</script>