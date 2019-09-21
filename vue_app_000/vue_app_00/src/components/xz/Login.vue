<template>
  <div>
     <h1>登录</h1>
        <!-- 用户名输入框 -->
        <mt-field label="用户名" v-model="uname" placeholder="请输入用户名" type="text" :attr="{maxlength:12,minlength:3}"></mt-field>
        <!-- 密码输入框 -->
        <mt-field label="密码" v-model="upwd" placeholder="请输入密码" type="password" :attr="{maxlength:12,minlength:3}"></mt-field>
        <!-- 登录按钮 绑定事件 -->
        <mt-button size="large" @click="login">登录</mt-button>
  </div>    
</template>
<script>
  export default {
    data(){
      return {
        uname:"",
        upwd:""
      }
    },
    methods:{
      login(){
        //功能一：完成用户登录操作
         // 1：获取用户名和密码
         // 2: 创建正则表达式 3~12位置 字母数字
          var reg=/^[a-z0-9]{3,12}$/i;
         // 3: 判断如何错误 用户名提示
         if(!reg.test(this.uname)){
           this.$toast({message:"用户名格式不正确!"})
           return;
         }
          //4: 判断如何错误 密码提示
           if(!reg.test(this.upwd)){
           this.$toast({message:"密码格式不正确!"})
           return;
         }
         //5: 发送ajax
          this.axios.get(
            "/login",
            {
              params:{
                uname:this.uname,
                upwd:this.upwd
              }
            }
          ).then(result=>{
            if(result.data.code==1){
              this.$router.push("/Product")
            }else{
              this.$messagebox("登录失败","用户名密码错误")
            }
            this.uname="";
            this.upwd=""
          })
          //6: 接收服务器返回数据
          //7: 失败 提示
         // 8: 成功 跳转
      }
    },
  }
</script>