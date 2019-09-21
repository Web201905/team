<template>
<div>
  <h1>B.vue 演示使用Vuex中集中保存数据</h1>
  <h1>成亮的年龄{{$store.getters.getAge}}</h1>
  <h1>{{$store.getters.getList}}</h1>
  <h1>{{$store.getters.getCar}}</h1>
  <button @click="clearAge">清空年龄[异步]</button>
</div>
</template>
<script>
export default {
  methods:{
    clearAge(){
      this.$store.dispatch("modifyAge")
    }
  }
}
</script>