<template>
  <div>
    <div class="header">
      <div class="">
        <a href=""><img src="../../public/image/goback.png" alt=""></a>
      </div>
      <div class="header_title">个人中心</div>
      <div>三</div>
    </div>
    <div class="my_info">
      <div class="top_section">
        <div class="kong"></div>
        <div class="my_head_img">
          <img src="" alt="">
        </div>
        <p class="my_user_name">键盘书生</p>
        <div class="four_section">
          <div class="list_item">
            <img src="../../public/image/xin.png" alt="">
            <p class="">我的收藏</p>
          </div>
          <div class="list_item">
            <img src="../../public/image/order.png" alt="">
            <p class="">我的订单</p>
          </div>
          <div class="list_item">
            <img src="../../public/image/discuss.png" alt="">
            <p class="">我的评论</p>
          </div>
          <div class="list_item">
            <img src="../../public/image/quan.png" alt="">
            <p class="">代金券</p>
          </div>
        </div>
      </div>
      <div class="list_wrap">
        <div class="list-item">
          <span class="share">分享优惠</span>
          <p class="list-item-right">
            <span class="jijin pink">与好友一起积攒住宿基金</span>
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">积分兑换</span>
          <p class="list-item-right">
            <span class="jijin">点击下载APP兑换礼品</span>
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">红包</span>
          <p class="list-item-right">
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">账号设置</span>
          <p class="list-item-right">
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">身份认证免押</span>
          <p class="list-item-right">
            <span class="jijin">去验证</span>
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">常用入住人</span>
          <p class="list-item-right">
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">我想成为房东</span>
          <p class="list-item-right">
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
        <div class="list-item">
          <span class="share">关于小猪</span>
          <p class="list-item-right">
            <span class="arrow"><img src="../../public/image/arrow.png" alt=""></span>
          </p> 
        </div>
      </div>
    </div>
  </div>
</template>
<style lang="less">
  .header{
    padding: 0.5rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    .header_title{
      font-weight: 700;
      color: #333333;
    }
  }
  .my_info{
    width: 92%;
    margin: 0 auto;
    .top_section{
      width: 100%;      
      background: url('../../public/image/myInfoBg.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      border-radius: 10px;
      .kong{height: 2rem;}
      .my_head_img{
        width: 4.7rem;
        height: 4.7rem;
        background: rgba(10, 10, 10, 0.2);
        border-radius: 50%;
        margin: 0 auto;
      }
      .my_user_name{
        text-align: center;
        font-weight: 600;
        color: #ffffff;
        font-size: 1.1rem;
        margin-top: 0.8rem;
      }
      .four_section{
        width: 96%;
        margin: 2rem auto 1rem;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        .list_item{
          width: 48%;
          background: hsla(0,0%,100%,0.7);
          margin-bottom: 0.5rem;
          border-radius: 8px;
          padding-top: 1.1rem;
          padding-bottom: 1.1rem;
          box-shadow: 0 0.08rem 0.213333rem #26282b40;
          img{
            width: 2rem;
            margin-bottom: 0.3rem;
          }
          p{
            color: #000000;
          }
        }
      }
    }
    .list_wrap{
      width: 100%;
      .list-item{
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem 1rem;
        .share{
          font-size: 0.95rem;
          color: #000000;
        }
        .list-item-right{
          .jijin{
            font-size: 0.95rem;
            color: #000000;
            margin-right: 0.3rem;
          }
          .pink{
            color: #ff4081;
          }
        }
      }
    }
  }
</style>