import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/bankerLoan',
    name: 'BankerLoan',
    component: () => import('../views/BankerLoan.vue')
  },
<<<<<<< HEAD
  // {
  //   path: '/usercheck',
  //   name: 'UserCheck',
  //   component: () => import('../views/UserCheck.vue')
  // },
=======
  {
    path: '/applyDetail',
    name: 'ApplyDetail',
    component: () => import('../components/User/ApplyDetail.vue')
  },
  {
    path: '/loanList',
    name: 'LoanList',
    component: () => import('../components/User/LoanList.vue')
  },
  {
    path: '/product',
    name: 'Product',
    component: () => import('../components/User/Product.vue')
  },
  {
    path: '/productApply',
    name: 'ProductApply',
    component: () => import('../components/User/ProductApply.vue')
  },
>>>>>>> 7da631a8727a0c4ec1ce69a8e6b7f4bac01a5555
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
