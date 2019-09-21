<template>
  <div>
    <!-- 头部导航 -->
    <header>
      <div class="head_bar">
        <div class="head_bar_con">
          <!-- LOGO -->
          <div class="nav_hotel">
            <a href="javascript:;" class="logo_index"></a>
          </div>
          <!-- 右侧注册登录 -->
          <ul class="nav_R">
            <li class="nav_R_li"><a href="javascript:;">注册</a></li>
            <li><i>·</i></li>
            <li class="nav_R_li"><a href="javascript:;">登录</a></li>
            <li><i>·</i></li>
            <li>
            <van-dropdown-menu>
              <van-dropdown-item v-model="value1" :options="option1" />
            </van-dropdown-menu>
            </li>
            <li class="nav_R_li"><a href="javascript:;"><img src="../../img/iphoto.svg" alt="">小猪</a></li>
            <li><van-button color="#1abc9c">免费发布房间</van-button>
            </li> 
          </ul>
        </div>  
      </div>
    </header>
    <!-- 主体内容 -->
    <main>
      <div class="nav_top_swi">
        <van-swipe :autoplay="3000">
          <van-swipe-item v-for="(p,i) of carousel" :key="i">
            <img :src="'http://127.0.0.1:8080/'+p.img_url" alt="">
          </van-swipe-item>
        </van-swipe>
      </div>
      <!-- 日期和城市选择 -->
      <div class="selections">
        <!-- 日期选择 -->
        <div class="dateDiv">
          <van-button @click="showPopup" style="width:106px;border:none">
            入住离开日期
          </van-button>
          <van-popup v-model="show"  position="bottom" :style="{ height: '20%' }" closeable close-icon="close">
            <mt-picker :slots="slots" @change="onValuesChange"></mt-picker>
          </van-popup>
        </div>
        <span style="line-height:40px">|</span>
        <div class="cityDiv">
          <!-- 城市选择 -->
          <van-field readonly clickable label="城市" :value="value" placeholder="选择城市" @click="showPicker = true"/>
          <van-popup v-model="showPicker" position="bottom">
            <van-picker show-toolbar :columns="columns" @cancel="showPicker = false" @confirm="onConfirm"/>
          </van-popup>
        </div>  
        <!-- 搜索小猪 -->
        <div class="searchDiv">
          <a class="search" href="javascript:;">搜索小猪 →</a>
        </div>
      </div>
      <!-- 下载APP -->
      <div class="loadApp">
        <a href="javascript:;"><img src="../../img/loadApp.jpg" alt=""></a>
      </div>
      <h1 class="title">别住酒店,住我家</h1>
      <h5 class="title_small">莫愁前路无知己，天下谁人不识君 </h5>
      <div class="content_v2">
        <!-- 内容第一行 -->
        <van-row>
          <van-col span="8">
            <img src="../../img/details1.jpg" class="img_room" alt="">
            <div class="content_v2_DIV">
              <img class="img_small" src="../../img/details1_small.jpg" alt="">
              <span class="room_name">屋里灰灰的家 - 苏州</span>
              <span class="index_price">¥218</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
          <van-col span="8">
            <img src="../../img/details2.jpg" class="img_room" alt="">
            <div  class="content_v2_DIV">
              <img class="img_small" src="../../img/details2_small.jpg" alt="">
              <span class="room_name">屋里灰灰的家 - 苏州</span>
              <span class="index_price">¥218</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
          <van-col span="8">
            <img src="../../img/city_sz.jpg" class="img_room" alt="">
            <div class="content_v2_DIV2">
              <span class="index_price">10000+套</span>
              <span class="room_name">朝气蓬勃  ·  深圳</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
        </van-row>
        <!-- 内容第二行 -->
        <van-row>
          <van-col span="16">
            <img class=" city_big" src="../../img/city_qd_big.jpg" alt="">
            <div class="content_v2_">
              <span class="room_name">风情帆都  ·  青岛</span>
              <span class="index_price">10000+套</span>    
            </div>
          </van-col>
          <van-col span="8">
            <img src="../../img/details1.jpg" class="img_room" alt="">
            <div class="content_v2_DIV">
              <img class="img_small" src="../../img/details1_small.jpg" alt="">
              <span class="room_name">屋里灰灰的家 - 苏州</span>
              <span class="index_price">¥218</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
        </van-row>
         <!-- 内容第三行 -->
        <van-row>
          <van-col span="8">
            <img src="../../img/photo.jpg" class="img_room" alt="">
            <div class="content_v2_DIV">
              <img class="img_small" src="../../img/small.jpg" alt="">
              <span class="room_name">屋里灰灰的家 - 苏州</span>
              <span class="index_price">¥218</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
          <van-col span="8">
            <img src="../../img/details2.jpg" class="img_room" alt="">
            <div  class="content_v2_DIV">
              <img class="img_small" src="../../img/details2_small.jpg" alt="">
              <span class="room_name">屋里灰灰的家 - 苏州</span>
              <span class="index_price">¥218</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
          <van-col span="8">
            <img src="../../img/city_cq.jpg" class="img_room" alt="">
            <div class="content_v2_DIV2">
              <span class="index_price">10000+套</span>
              <span class="room_name">朝气蓬勃  ·  深圳</span>
            </div>
            <a href="javascript:;"></a>
          </van-col>
        </van-row>
         <!-- 内容第四行 -->
        <van-row>
          <van-col span="8">
            <img src="../../img/details1.jpg" class="img_room" alt="">
            <div class="content_v2_DIV">
              <img class="img_small" src="../../img/details1_small.jpg" alt="">
              <span class="room_name">屋里灰灰的家 - 苏州</span>
              <span class="index_price">¥218</span>
            </div>  
          </van-col>
          <van-col span="16">
            <img class=" city_big" src="../../img/city_hz_big.jpg" alt="">
            <div class="content_v2_">
              <span class="room_name">风情帆都  ·  青岛</span>
              <span class="index_price">10000+套</span>    
            </div>
          </van-col>
          <a href="javascript:;"></a>
        </van-row>
      </div>
      <h1 class="title">让分享和信赖悄然发生</h1>
      <h5 class="title_small">完善的安全机制和信用机制，帮助房东和房客 </h5>
      <!-- 中部UL身份验证.. -->
      <div class="content_v2 marginB30">
        <ul class="xz_ads">
          <li v-for="(p,i) of  personFour" :key="i">
            <img :src="'http://127.0.0.1:8080/'+p.img_url" alt="">
          </li>
        </ul> 
      </div>
      <!-- 底部轮播 -->
      <div class="index_commnet">
        <div class="index_T">
          <h1 class="index_T_large">世间所有的相遇都是久别重逢</h1>
          <h5 class="index_T_small">房客和房东都在彼此感动着</h5>
        </div>
        <div class="index_comment_swis">
          <div>
            <van-swipe indicator-color="#f05b72" :autoplay="4000"  vertical class="index_comment_swi">
              <van-swipe-item v-for="(p,i) of bottomCarousel" :key="i">
                <div class="nav_bottom_font">{{p.ltitle}}</div>
                <div class="nav_bottom_img_div"><img :src="'http://127.0.0.1:8080/'+p.img_url" alt=""></div>
                <div class="nav_bottom_font">{{p.lname}}</div>
                <div class="nav_bottom_font">{{p.ldate}}</div>
                <div class="nav_bottom_font"><a href="javascript:;">{{p.ldetails}}</a></div>
              </van-swipe-item>    
            </van-swipe>
          </div>
        </div> 
      </div>
      <div>
      </div>
      <div class="weixin">
        <div style="color:#f05b72;font-size:14px;margin-top:1rem">关注我们</div>
        <img class="weibo" src="../../img/weChat.png" alt="">
        <img class="weibo" src="../../img/weibo.png" alt="">
      </div>
    </main>
    <!-- 尾部 -->
    <footer>
      <div class="footer_content">
        <ul class="footer_content_ul">
          <li>
            <img src="../../img/bao.svg" class="footer_bao" alt="">
            <p class="text_style">房客指南</p> 
          </li>
          <li>
            <img src="../../img/person.svg" class="footer_bao" alt="">
            <p class="text_style">房东指南 </p>
          </li>
          <li>
           <a href="javascript:;">关于我们</a>
           <a href="javascript:;">关于小猪</a>
           <a href="javascript:;">加入我们</a>
           <a href="javascript:;">联系我们</a>
          </li>
          <li>
            <a href="javascript:;">网站帮助</a>
            <a href="javascript:;">帮助中心</a>
            <a href="javascript:;">网站地图</a>
          </li>
          <li class="xieyi">
            <a href="javascript:;">网站协议</a>
            <a href="javascript:;">服务协议</a>
            <a href="javascript:;">隐私保护</a>
          </li>
          <li>
            <a href="javascript:;" class="connection"><img src="../../img/connect2.svg" alt=""> 在线客服</a>
             <a href="javascript:;">客服电话  400 - 010 - 7890</a>
             <a href="javascript:;">客服邮箱  service@xiaozhu.com</a>
          </li>
        </ul>
      </div>
      <div class="bottom_nav">
        <ul class="bottom_nav_ul">
          <li><a href="javascript:;" style="">城市导航</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
          <li><a href="javascript:;">北京短租房</a></li>
        </ul>
      </div>
      <div>
        <ul class="bottom_nav_ul2">  
            <li><a href="javascript:;">北京短租房</a></li>
            <li><a href="javascript:;">北京短租房</a></li>
            <li><a href="javascript:;">北京短租房</a></li>
            <li><a href="javascript:;">北京短租房</a></li>
            <li><a href="javascript:;">北京短租房</a></li>
            <li><a href="javascript:;">北京短租房</a></li>
          </ul>
      </div>
      <div>
        <ul class="bottom_nav_ul3">  
            <li><a href="javascript:;">京ICP备12035936号-1   许可证号：京ICP证140510号    </a></li>
            <li><a href="javascript:;">安全联盟</a></li>
        </ul>
      </div>
      <div>
        <ul class="bottom_nav_ul4">  
            <li><a href="javascript:;"><img src="../../img/govRecord_icon.png" alt=""> 京公网安备 11010802020380号 </a></li>
            <li><a href="javascript:;">违法和不良信息举报电话：4000107890</a></li>
        </ul>
      </div>
    </footer>
  </div>
</template>
<script>
export default {
  data() {
    return {
      bottomCarousel:[],
      carousel:[],
      value1: 0,
      personFour:[],
      option1: [
        { text: '短租指南', value: 0 },
        { text: '房客指南', value: 1 },
        { text: '房东指南', value: 2 },
      ],
      show: false,//日期选择
      value: '',
      showPicker: false,
      columns: ['杭州', '宁波', '温州', '嘉兴', '湖州'],
      slots: [
        {
          flex: 1,
          values: ['2015-01', '2015-02', '2015-03', '2015-04', '2015-05', '2015-06'],
          className: 'slot1',
          textAlign: 'right'
        }, {
          divider: true,
          content: '-',
          className: 'slot2'
        }, {
          flex: 1,
          values: ['2015-01', '2015-02', '2015-03', '2015-04', '2015-05', '2015-06'],
          className: 'slot3',
          textAlign: 'left'
        }
      ],
      
    }
  },
  methods:{
    bottomC(){
       this.axios.get(
        "/bottomSwi"   
      ).then(res=>{
        if(res.data.code==1){
          this.bottomCarousel=res.data.data;   
          console.log(res.data.data)
        }
      })
    },
    indexFour(){
       this.axios.get(
        "/indexFour"   
      ).then(res=>{
        if(res.data.code==1){
          this.personFour=res.data.data;   
          console.log(res.data.data)
        }
      })
    },
    indexCarousel(){
      this.axios.get(
        "/index"   
      ).then(res=>{
        if(res.data.code==1){
          this.carousel=res.data.data;   
          console.log(res.data.data)
        }
      })
    },
    onConfirm(value) {
      this.value = value;
      this.showPicker = false;
    },
    showPopup() {
      this.show = true;
    },
     onValuesChange(picker, values) {
      if (values[0] > values[1]) {
        picker.setSlotValue(1, values[0]);
      }
    }  
  },
  created(){
    this.indexCarousel();
    this.indexFour();
    this. bottomC();
  }
}
</script>
<style>
*{margin:0;padding:0}
.head_bar{
  position: absolute;
  z-index: 1;
   width:100%;
}
  /* 外层父元素 */
  .head_bar_con{
    display: flex;
    justify-content:space-between;
  }

   .head_bar_con .logo_index{
    width:5rem;
    height:2.5rem;
    display: flex;
    background: url(../../img/icon_head.png) no-repeat;
    background-position: 0 0.25rem; 
    background-size:12rem
   }
   /* 顶部ul */
  .nav_R{
    display: flex; 
    justify-content:end;
    flex-wrap: nowrap;
  }
  .nav_R li{
    height: 3rem;
    line-height:3rem;
    color:#fff;
    padding:0 2px;
    flex-wrap: nowrap;
    overflow: hidden;
  }
  .nav_R a{
     color:#fff;
     display: block;
     font-size:12px;
    -webkit-transform : scale(0.84,0.84) ;
  }
  .van-dropdown-menu__title{
    font-size:10px;
    -webkit-transform : scale(0.9,0.9) ;
  }
  .nav_R_li img{
    width:40%;
    height:1rem
  }
  /* 短租指南 */
  .van-dropdown-menu{
    height:100%!important;
   background:none!important;
    color:#fff!important
  }
  .van-dropdown-menu__title{
    font-size:10px!important;
  -webkit-transform : scale(0.9,0.9) ;
  }
  /* 免费发布 */
  .van-button--normal{
    font-size:12px!important
  }
  /* 短租指南的颜色 */
  .van-dropdown-menu__item{
    background:transparent!important;
  }
  .van-ellipsis{
     color:#fff!important
  }
  /* 短租指南三角形 */
  .van-dropdown-menu__title::after{
    border-color: transparent transparent #fff #fff!important
  }
  /* 短租指南的外边框 */
  [class*=van-hairline]::after{
    border:0!important;
  }
  /* 轮播 */
  .nav_top_swi .van-swipe-item img{
    width:100%;
    height:100%;
  }
  .nav_top_swi .loadApp img{
    width:100%;
    height:100%;
    display: inline-block;
  }
  /* 日期城市选择 */
  .selections{ 
    display: flex;
    justify-content: space-around
  }
  .van-picker-column__item{
    color:#000!important;

  }
  .search{
    width:120px;
    height:100%;
    background:#F16B80;
    color:#fff;
    border:0;
    font-size: 12px;
    display:block;
    line-height:44px;
    text-align: center;
  }
  .van-cell{
    font-size:12px!important;
    padding:10px 10px !important; 
  }
  .van-button--primary{
    background:rgb(26, 188, 156)!important;
  }
  .loadApp img{
    width:100%;
    height:100%;
  }
  /* 别住酒店 */
   .title{
     font-weight: normal;
    font-size:1.35rem;
    font-weight: normal;
    line-height:0.75rem;
    color: #445566;
    text-align: center;
  }
  .title_small{   
    font-size:12px;
    color: #959ea7;
    text-align: center;
    margin-bottom:1rem;
     -webkit-transform:scale(0.8); 
  }
  /* 主内容的图片 */
 .content_v2  .van-col.van-col--8 {
    position: relative;
    padding:0.1rem;
  }
  .content_v2  .van-col.van-col--16 {
    position: relative;
    padding:0.1rem;
  }
  /* 房间图片 */
  .img_room{
    width:100%;  
    height:100%; 
  }
  /* 小图片 */
  .img_small{
    width:20%;
    height:20%;
    border:1px solid #fff;
    border-radius: 50%;
    display: inline-block;
     -webkit-transform: translate(180%,10%);
      -moz-transform: translate(180%,10%);
  } 
  /* 文字部分 */
  .room_name {
    font-size:2px;
    -webkit-transform:scale(0.7); 
    display:inline-block;
    color:#fff;
    width:100%;text-align:center;
  }
  /* 价格 */
  .index_price{
    font-size:2px;
    -webkit-transform:scale(0.7); 
    display:inline-block;
    color:#fff;
    width:100%;text-align:center;
  }
  /* 小图片小文字父元素 */
  .content_v2_DIV{
    position: absolute;
    top:35%;
    left:10%;
  }
  .content_v2_DIV2{
    position: absolute;
    top:0%;
    left:10%;
  }
  .content_v2_{
    position: absolute;
    top:56%;
    left:0%;
    width:100%;
    text-align:center;
    display:inline-block;
    
  }
  /* 内容第二行大图片 */
  .city_big{
    width:100%;
    height:100%;
  }
  /* 中部UL身份验证背景图片 */
  .xz_ads{
    display: flex;
    justify-content: space-between;
    
  }
  .xz_ads img{
    width:100%;
    height:100%;
  }
  /* 底部轮播 */
  /* 背景图 */
   .index_commnet{
    background:url(../../img/bg_comment.jpg);
    width:100%;
    color:#fff;
    background-size: cover;
    height:275px;
  }
  .index_commnet .index_T_large{
    font-size:1.25rem;
    font-weight: normal;
    text-align: center;
    padding-top:2rem;
    margin-bottom:0;
  }
  .index_commnet .index_T_small{
     font-size:0.2rem;
    font-weight: normal;
    text-align: center;
  }
  /*  */
 .index_commnet .index_comment_swis{
    display: flex;
    height:100%;
    width:100%;
    overflow: hidden;
  }

  .index_commnet .index_comment_swi{
    width:100%;
    height:100%;
  }
  .index_commnet .van-swipe-item{
    width:100%!important;
  }
  /* 小图片头像 */
  .index_commnet .van-swipe-item img{
    width:15%;
    height:100%;
     border: 1px solid #fff;
    border-radius: 50%; 
    overflow: hidden; 
  }
  /* 小头像的父元素 */
  .index_commnet .nav_bottom_img_div{
    text-align: center;
  }
  /* 文字 */
  .index_commnet .nav_bottom_font{
    display:block;
    font-size:2px;
    -webkit-transform:scale(0.7); 
    color:#fff;
    text-align: center;
  }
 .index_commnet  .nav_bottom_font a{
 
    font-size:2px;
    -webkit-transform:scale(0.7); 
    color:#fff;
  }
  /* 微信图片 */
  .weixin{
      text-align: center;
  }
  .weibo{
   width:5%;height:100%
  }
.van-divider{
  margin-bottom:0!important
}
/* 底部导航 */
.footer_bao{
  width:50%;
  height:50%;
}
.footer_content{
  width: 100%
}
.footer_content_ul{
  display: flex
}
 .text_style{
    font-size:5px;
    -webkit-transform:scale(0.6);
     color:#959ea7;
     display: inline-block;
     width:50px;
 }
 .footer_content .footer_content_ul a{
    font-size:2px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
    display:inline-block;
    width:100%;
 }
 .footer_content .li_p{
    font-size:2px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
 }
 .bottom_nav{
   display: flex
 }
  .bottom_nav span{
    font-size:2px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
    display: inline-block
  }
  .bottom_nav_ul{
    display: flex; 
  }
  .bottom_nav li{
    padding:0!important;
    margin: 0!important;
    width:8%;
  }
  .bottom_nav li a{
    width:60px;
    display: inline-block;
    font-size:2px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
  }
  /* 底部第二行导航 */
    .bottom_nav_ul2{
      display: flex;
      justify-content: center;
    }
  .bottom_nav_ul2 li{
    padding:0!important;
    margin: 0!important;    
  }
  .bottom_nav_ul2 a{
    font-size:12px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
    display: inline-block;  
}
 /* 底部第三行导航 */
    .bottom_nav_ul3{
      display: flex;
      justify-content: center;
    }
  .bottom_nav_ul3 li{
    padding:0!important;
    margin: 0!important;    
  }
  .bottom_nav_ul3 a{
    font-size:12px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
    display: inline-block;  
}
 /* 底部最后导航 */
    .bottom_nav_ul4{
      display: flex;
      justify-content: center;
    }
  .bottom_nav_ul4 img{
    width:10%;
    height:100%;
  }
  .bottom_nav_ul4 a{
    font-size:12px;
    -webkit-transform:scale(0.7);
    color:#959ea7;
    display: inline-block;  
}
/* // 联系我们 */
.connection{
  display: inline-block;  
  background:#f05b72;
  color:#fff!important;
  font-size: 12px!important;
  -webkit-transform:scale(1)!important;
  width:50%!important;
  padding:5px!important
}
.connection img{
  width:20%;
  height:100%;
}
</style>
