import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue';
import Signup from '../views/Signup.vue';
import Login from '../views/Login.vue';
import Logout from '../views/Logout.vue';
import RecipesIndex from '../views/RecipesIndex.vue';
import RecipesShow from '../views/RecipesShow.vue';
import FavoritesIndex from '../views/FavoritesIndex.vue';
import RecipesSearch from '../views/RecipesSearch.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/signup',
    name: 'signup',
    component: Signup
  },
  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/logout',
    name: 'logout',
    component: Logout
  },
  {
    path: '/recipes',
    name: 'recipes-index',
    component: RecipesIndex
  },
  {
    path: '/recipes/:id',
    name: 'recipes-show',
    component: RecipesShow
  },
  {
    path: '/favorites',
    name: 'favorites-index',
    component: FavoritesIndex
  },
  {
    path: '/search',
    name: 'recipes-search',
    component: RecipesSearch
  },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
});

export default router
