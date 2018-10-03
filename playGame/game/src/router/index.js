import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '../components/home'
import DyGame from '../components/dyGame'
import Stand from '../components/stand'
import Class from '../components/class'
import Top from '../components/top'
import Search from '../components/subcomponents/search'
import Login from '../components/LR/login'
import TopGameList from '../components/subcomponents/topGameList'
import Details from '../components/details'
import List from '../components/subcomponents/list'

Vue.use(Router);

export default new Router({
  mode:"history",
  routes: [
    {path: '/',redirect:"/index"},
    {path:"/index",component:Home},
    {path:"/dyGame",component:DyGame},
    {path:"/stand",component:Stand},
    {path:"/class",component:Class},
    {path:"/top",component:Top,
      children:[
        {path:"",component:TopGameList},
        {path:"/GameList/:table",component:TopGameList}
      ]},
    {path:"/search",component:Search},
    {path:"/login",component:Login},
    {path:"/detail/:id",component:Details},
    {path:"/list",component:List}
  ]
})
