<template>
  <div class="cart">
    <!-- 商品信息 -->
    <div class="cart-item" v-for="(item,index) of list" :key="index">
      <div class="leftText">
        <input type="checkbox" class="checkBtn" v-model="item.checked">
        <div class="image"><img :src="'http://127.0.0.1:8080/'+item.img_url"></div>
      </div>
      <div class="rightText">
        <div class="lname">{{item.lname}}</div>
        <div class="price"  style="color:red">
          ¥:{{item.price.toFixed(2)}}
          <span class="countBtn">
            <button class="BTN">-</button>
            <span class="lcount" style="color:#000">{{item.count}}</span>
            <button class="BTN">+</button> 
          </span>
        </div>
         <div class="deleteText">
          <a href="javascript:;" :data-delete="item.id"  @click="deleteItem">删除</a>
        </div> 
      </div>
    </div>
    
    <!-- 购物车中商品的数量:删除选中的商品,清空购物车 -->
    <div>
      <mt-button @click="deleteItems">删除选中的商品</mt-button>
      <mt-button>清空购物车</mt-button>
    </div>
    <!-- 复选框:全选 -->
    <div class="selectall">
      全选:  <input type="checkbox" @click="selectAll">
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      src:"",
      list:[],
      
    }
  },
  methods:{
    selectAll(e){
     for(var item of this.list){
      
       item.checked=e.target.checked
     }
    },
    load(){
      this.axios.get(
      "/carts"
      ).then(res=>{
        if(res.data.code==-1){
          this.$messagebox("消息","未登录").then(
            this.$router.push("/Login")
          )
        }else{
          var all=res.data.data;
          //创建循环,
          for(var item of all){
            //为其添加checked为false
            item.checked=false;
          }
          //将新数组赋值list
          this.list=all;
        }
      })
    },
    deleteItem(event){
      //功能:用户点击删除按钮完成删除指定商品任务
      //(1)为按钮绑定点击事件调用deleteItem 
      //(2)显示确认框如果用户选 确定
      this.$messagebox.confirm("是否删除指定数据")
      .then(res=>{
        //(3)将当前商品id传递函数
        var id = event.target.dataset.delete;
        //(4)发送ajax请示完成删除任务
        var url="/delItem";
        var obj={id:id};
        this.axios.get(url,{
          params:obj
        })
        .then(res=>{
          //
          //(5)删除成功 提示"删除成功"
          if(res.data.code==1){
            this.$toast("删除成功");
            this.load();//刷新
            }
        }) 
      
      })
      .catch(err=>{

      })
    },
    deleteItems(e){
      this.$messagebox.confirm("是否删除").then(res=>{
        var ids="";
        for(var item of this.list){
          if(item.checked){
            ids+=item.id+",";
          }
        }
        ids=ids.replace(/\,$/,"")
        if(ids==""){
          this.$toast("请选择要删除的商品");
          return;
        }
        this.axios.get("/delItems",
          {
            params:{
              ids
            }
          }
        ).then(res=>{
          if(res.data.code==1){
            this.$toast("删除成功")
            this.load()
          }else{
            this.$toast("删除失败")
          }
          
        })
      }).catch(err=>{

      })
    }
  },
  created(){
    this.load();
  }
}
</script>
<style>
  /* 商品项目元素 */
  .checkBtn{
    width:1rem;
    height:1rem;
  }
  img{
    width:100px;
    height:100px;
  }
  .cart-item{
    display: flex;
    
    align-items: center;
    border-bottom:1px solid #ccc;/*底部边线*/
    padding:25px 0;
  }
  /* 修改文字样式 */
  .leftText{
    display: flex;
    align-items: center;/*垂直居中*/
  }
  /*商品名称*/
  .lname{
    margin-left:0.5rem;
  }
  .price{
    margin-left:0.5rem;
  }
  .lcount{
    padding:0.5rem;
  }
  .deleteText{
    text-align: right;
    padding-right:1rem;
  }
  .deleteText a{
    color:#666;
    font-size:14px;
    text-decoration: none;
  }
  .countBtn{
    margin-left:8rem;
  }
  .BTN{
    background:#ddd;
    border:0;
    border-radius:5px;
  }
</style>
