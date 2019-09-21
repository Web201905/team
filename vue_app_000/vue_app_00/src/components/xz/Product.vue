<template>
  <div class="product-app">
    <div class="goods-item" v-for="(p,i) of all" :key="i">
      <img :src="'http://127.0.0.1:8080/'+p.img_url">
      <h3>{{p.lname}}</h3>
      <div class="info">¥:{{p.price.toFixed(2)}}</div>
      <div class="btns">
        <mt-button class="Cartbtn" @click="addCart" :data-lid="p.lid" :data-lname="p.lname" :data-price="p.price">加入购物车</mt-button>
        <mt-button class="Buybtn">立即购买</mt-button>
      </div>
    </div>
    <mt-button size="large" @click="loadMore">加载更多</mt-button>
    <mt-button size="large" @click="look">查看购物车</mt-button>
  </div>
</template>
<script>
export default {
  data(){
    return {
      src:"",
      all:[],
      pno:0
    }
  },
  methods:{
    look(){
      this.$router.push("/Cart")
    },
    loadMore(){
      this.pno++;
      this.axios.get(
      "/product",
      {
        params:{
          pno:this.pno
        }
      }
    ).then(res=>{
      if(res.data.code==1){
        //this.all=res.data.data;
        //拼接下一页的商品
        var rows=this.all.concat(res.data.data);
        this.all=rows;
      }
    })
    },
    addCart(e){
      var lid=e.target.dataset.lid;
      var lname=e.target.dataset.lname;
      var price=e.target.dataset.price;
      this.axios.get(
        "/addcart",
        {
          params:{
            lid,
            lname,
            price,
          }
        }
      ).then(res=>{
        if(res.data.code==-1){
          this.$messagebox("消息","请先登录").then(res=>{
            this.$router.push("/login")
          })
         
        }else if(res.data.code==-2){
          this.$toast({message:"添加失败"})
        }else{
          this.$toast({message:"添加成功",iconClass:"iconfont icon-chenggong"})
        }
         
      })
    }
  },
  created(){
    this.loadMore();
  }
 }
</script>
<style scoped>
  img{
    width:100%;
    height:80%;
  }
  .product-app{
    display: flex;
    flex-wrap: wrap;/*一行显示不下，换行*/
    justify-content:space-around;
    padding:4px;
  }
  .goods-item{
    border:1px solid #ccc;
    border-radius:5px;
    margin:1rem 0;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;/*商品内容按列排放*/
    width:100%;
  }
  .goods-item .info{
    color:red;
    font-size:1.5rem
  }
  .btns{
    display: flex;
  }
  .Cartbtn{
    background:#ffbc00;
    color:#fff;
    width:50%;
  }
  .Buybtn{
    background:#f10000;
    color:#fff;
    width:50%;
  }
</style>
