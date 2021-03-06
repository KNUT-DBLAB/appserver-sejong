import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    redirect : '/login',
  },
  {
    path: '/test',
    name: 'test',
    component: () => import('../views/test.vue')
  },
  // {
  //   path: '*',
  //   redirect : '/login',
  //   component: () => import('../views/NotfoundPage.vue')
  // },

  //로그인 회원가입
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/login/login.vue')
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/login/login.vue')
  },
  {
    path: '/clause',
    name: 'clause',
    component: () => import('../views/login/clause.vue')
  },
  {
    path: '/signup',
    name: 'signup',
    component: () => import('../views/login/signup.vue')
  },
  {
    path: '/signupFarm',
    name: 'signupFarm',
    component: () => import('../views/login/signupFarm.vue')
  },
  {
    path: '/check_user',
    name: 'check_user',
    component: () => import('../views/login/check_user.vue')
  },
  {
    path: '/check_farm',
    name: 'check_farm',
    component: () => import('../views/login/check_farm.vue')
  },
  {
    path: '/farm_user_info',
    name: 'farm_user_info',
    component: () => import('../views/login/farm_user_info.vue')
  },
  {
    path: '/farm_biz_info',
    name: 'farm_biz_info',
    component: () => import('../views/login/farm_biz_info.vue')
  },


  //메인
  {
    path: '/main',
    name: 'main',
    component: () => import('../views/main/main.vue')
  },
  {
    path: '/auction',
    name: 'auction',
    component: () => import('../views/main/auction.vue')
  },
  {
    path: '/auction_reg',
    name: 'auction_reg',
    component: () => import('../views/main/auction_reg.vue')
  },
  {
    path: '/search',
    name: 'search',
    component: () => import('../views/main/search.vue')
  },
  {
    path: '/trand',
    name: 'trand',
    component: () => import('../views/main/trand.vue')
  },
  {
    path: '/farm_mypage',
    name: 'farm_mypage',
    component: () => import('../views/main/farm_mypage.vue')
  },
  {
    path: '/alert',
    name: 'alert',
    component: () => import('../views/main/alert.vue')
  },
  {
    path: '/webSocketTest',
    name: 'webSocketTest',
    component: () => import('../views/main/webSocketTest.vue')
  },
  
  //경매
  {
    path: '/farm_calculate',
    name: 'farm_calculate',
    component: () => import('../views/auction/farm_calculate.vue')
  },
  {
    path: '/farm_calculate_clear',
    name: 'farm_calculate_clear',
    component: () => import('../views/auction/farm_calculate_clear.vue')
  },
  {
    path: '/auction_detail/:id',
    name: 'auction_detail',
    // props: true,
    component: () => import('../views/auction/auction_detail.vue')
  },

  //마이페이지
  {
    path: '/farm_mypage_auction',
    name: 'farm_mypage_auction',
    component: () => import('../views/myPage/farm_mypage_auction.vue')
  },
  {
    path: '/farm_mypage_get_review',
    name: 'farm_mypage_get_review',
    component: () => import('../views/myPage/farm_mypage_get_review.vue')
  },
  {
    path: '/farm_mypage_keep',
    name: 'farm_mypage_keep',
    component: () => import('../views/myPage/farm_mypage_keep.vue')
  },
  {
    path: '/farm_profile',
    name: 'farm_profile',
    component: () => import('../views/myPage/farm_profile.vue')
  },
  {
    path: '/ServiceCenter',
    name: 'ServiceCenter',
    component: () => import('../views/myPage/ServiceCenter.vue')
  },


  //////////////////////////////////컴포넌트/////////////////////////////////
  {
    path: '/bottomNav',
    name: 'bottomNav',
    component: () => import('../components/bottomNav.vue')
  },

]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

router.beforeEach((to, from, next) => { 
  next()
})

export default router
