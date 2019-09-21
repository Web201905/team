<template>
  <div>
    <div class="header">
      <div class="">
        <a href=""><img src="../../public/image/goback.png" alt=""></a>
      </div>
      <div class="header_title">济南</div>
      <div>三</div>
    </div>
    <!-- 选择地址和日期 -->
    <div class="address_date_select">
      <div class="address_left">
        <span class="search"><img src="../../public/image/search.png" alt=""></span>
        <div class="distance_select">
          <span class="city">济南</span>
          <div class="distance">
            <span class="distance_num">5km内</span>
            <img src="../../public/image/down_arrow.png" alt="">
          </div> 
        </div>
        <span class="del"><img src="../../public/image/del.png" alt=""></span>
      </div>
      <div class="date_right">
        <span class="select_date">请选择日期</span>
        <span class="select_arrow"><img src="../../public/image/down_arrow.png" alt=""></span>
      </div>
    </div>
    <!-- 选择位置、筛选和排序 -->
    <div class="select">
      <ul class="select_ul">
        <!-- 位置 -->
        <li class="select_site">
          <span class="">位置区域</span>
          <p><img src="../../public/image/down_arrow.png" alt=""></p>
        </li>
        <!-- 筛选 -->
        <li class="select_filter">
          <span class="">更多筛选</span>
          <p><img src="../../public/image/down_arrow.png" alt=""></p>
        </li>
        <!-- 排序 -->
        <li class="select_sort">
          <span class="">推荐排序</span>
          <p><img src="../../public/image/down_arrow.png" alt=""></p> 
        </li>
      </ul>
    </div>
    <!-- 酒店列表信息 -->
    <div class="hotel_list">
      <div class="hotel">
        <div class="hotel_img">
          <img src="../../public/image/list1.png" alt="">          
        </div>
        <img src="../../public/image/xin_collect.png" alt="" class="xin_collect">
        <div class="hotel_info">
          <div class="info_detail">
            <p class="name">头牌市中心火烈鸟主题两居室|小朋友超喜欢</p>
            <p class="desc">整套出租/2室1厅/2张床/宜住4人 · 5分/36点评</p>
            <div class="tags">
              <span><img src="../../public/image/mi.png" alt="">速订</span>
              <span><img src="../../public/image/mi.png" alt="">长租优惠</span>
              <span><img src="../../public/image/mi.png" alt="">优品</span>
              <span><img src="../../public/image/mi.png" alt="">商旅首选</span>
            </div>
          </div>
          <div class="head_photo">
            <img src="../../public/image/headphoto1.png" alt="">
          </div>
          <div class="price">
            <span>¥288</span><span>起/晚</span>
          </div>
        </div> 
      </div>
      <div class="hotel">
        <div class="hotel_img">
          <img src="../../public/image/list1.png" alt="">          
        </div>
        <img src="../../public/image/xin_collect.png" alt="" class="xin_collect">
        <div class="hotel_info">
          <div class="info_detail">
            <p class="name">头牌市中心火烈鸟主题两居室|小朋友超喜欢</p>
            <p class="desc">整套出租/2室1厅/2张床/宜住4人 · 5分/36点评</p>
            <div class="tags">
              <span><img src="../../public/image/mi.png" alt="">速订</span>
              <span><img src="../../public/image/mi.png" alt="">长租优惠</span>
              <span><img src="../../public/image/mi.png" alt="">优品</span>
              <span><img src="../../public/image/mi.png" alt="">商旅首选</span>
            </div>
          </div>
          <div class="head_photo">
            <img src="../../public/image/headphoto1.png" alt="">
          </div>
          <div class="price">
            <span>¥288</span><span>起/晚</span>
          </div>
        </div> 
      </div>
      <div class="hotel">
        <div class="hotel_img">
          <img src="../../public/image/list1.png" alt="">          
        </div>
        <img src="../../public/image/xin_collect.png" alt="" class="xin_collect">
        <div class="hotel_info">
          <div class="info_detail">
            <p class="name">头牌市中心火烈鸟主题两居室|小朋友超喜欢</p>
            <p class="desc">整套出租/2室1厅/2张床/宜住4人 · 5分/36点评</p>
            <div class="tags">
              <span><img src="../../public/image/mi.png" alt="">速订</span>
              <span><img src="../../public/image/mi.png" alt="">长租优惠</span>
              <span><img src="../../public/image/mi.png" alt="">优品</span>
              <span><img src="../../public/image/mi.png" alt="">商旅首选</span>
            </div>
          </div>
          <div class="head_photo">
            <img src="../../public/image/headphoto1.png" alt="">
          </div>
          <div class="price">
            <span>¥288</span><span>起/晚</span>
          </div>
        </div> 
      </div>

    </div>
  </div>
</template>
<style scoped>
  .header{
    padding: 0.5rem;
    display: flex;
    justify-content: space-between;  
    
  }
  .header .header_title{
      font-weight: 700;
      color: #333333;
  }
  .address_date_select{
    padding: 1.5rem; 
    display: flex;
    justify-content: space-between;
    
    
  }
  .address_date_select .address_left{
    display: flex;
    align-items: center;
    
  }
  .address_date_select .distance_select{
    display: flex;
    align-items: center;       
  }
  .address_date_select .distance_select .city{
    margin-right: 5rem;
    font-size: 0.8rem;
    font-weight: 700;
  }
  .address_date_select .distance_select .distance{
    align-items: center;
  }
  .address_date_select .distance_select .distance img{
    margin-top: 0.3rem;
  } 

  /* 右侧选择日期 */
  .address_date_select .date_right .select_date{
    font-size: 0.8rem;
  }

  /* 选择位置、筛选和排序 */
  .select .select_ul{
    display: flex;
    justify-content: center;  
  }
  .select .select_ul li{
    margin-right: 1rem;
    display: flex;
  }
  .select .select_ul li:last-child{
    margin-right: 0;
  }
  .select .select_ul span{
    border-bottom: 1px solid #e0e0e0;
  }

  /* 酒店列表 */
  .hotel_list{
    margin-top: 1rem;
  }
  .hotel_list .hotel{
      position: relative;  
    }
  .hotel_list .hotel .hotel_img{
    width: 100%;
    height: 15rem;
  }
  .hotel_list .hotel .hotel_img img{
    width: 100%;
    height: 100%;
  }
  .hotel_list .hotel .xin_collect{
    position: absolute;
    top: 0.6rem;
    right: 0.7rem;
  }
  /* 酒店详细信息 */
  .hotel_list .hotel .hotel_info{
    padding: 1rem;
    position: relative;  
  }
  .hotel_list .hotel .hotel_info .info_detail{
    width: 75%; 
  }
  .hotel_list .hotel .hotel_info .info_detail .name{
      font-size: 1.4rem;
      font-weight: 500;
      display: inline-block;
      text-align: justify;
    }
  .hotel_list .hotel .hotel_info .info_detail .desc{
      color: #757575;
      font-size: 0.8rem;
      margin-top: 0.5rem;
      display: inline-block;
      text-align: left;
    }
  .hotel_list .hotel .hotel_info .info_detail .tags{
    margin-top: 0.5rem;
    width: 22rem;
    text-align: left;  
  }
  .hotel_list .hotel .hotel_info .info_detail .tags span{
    color: #720124;
    font-size: 0.8rem;  
  }
  .hotel_list .hotel .hotel_info .info_detail .tags span img{
    width: 0.75rem;
    height: 0.75rem;
    margin-left: 0.3rem;
    margin-right: 0.3rem;
  }
  .hotel_list .hotel .hotel_info .info_detail .tags span img:first-child{
    margin-left: 0;
  }

  .hotel_list .hotel .hotel_info .head_photo{
    position: absolute;
    width: 3.5rem;
    height: 3.5rem;
    top: -2.1rem;
    right: 1rem; 
  }
  .hotel_list .hotel .hotel_info .head_photo img{
    width: 100%;
    height: 100%;
  } 

  .hotel_list .hotel .hotel_info .price{
    display: inline-block;
    width: 22rem;
    text-align: left;
    margin-top: 0.3rem; 
  }
  .hotel_list .hotel .hotel_info .price span:first-child{
    color: #ff4081;
    font-size: 1.5rem;
    margin-right: 0.2rem;
  }
  .hotel_list .hotel .hotel_info .price span:last-child{
    font-size: 0.8rem;
    color: #757575;
  }
</style>