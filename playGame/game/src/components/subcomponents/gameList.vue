<template>
  <div>
      <div class="list" v-for="item in list" :key="item.index" @click="goDetail(item.id)">
      <img :src="item.img_url">
      <div>
        <div class="top">
          <div>
            <div>{{item.title}}</div>
            <p>{{item.family}}|{{item.storage}}MB</p>
          </div>
          <div class="download">
            下载
          </div>
        </div>
        <div class="bottom">
          <p class="intro">{{item.intro}}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data:function(){
      return {
      
      }
    },
    methods:{
      goDetail(id){
        this.$router.push('/detail/'+id);
      }
    },
    props:['list']
  }
</script>

<style scoped>
  p{
    margin:0;
    padding-top:5px;
  }
  div.list{
    width:100%;
    display: flex;
    padding:10px 0;
    border-bottom: 1px solid #ddd;
  }
  div.list>img{
    width:72px;
    height:72px;
    border-radius: 10px;
    margin-right:10px;
  }
  div.list>div{
    width:100%;
    display: flex;
    flex-direction: column;
  }
  div.list>div>div.top{
    display: flex;
    justify-content: space-between;
    align-items:center;
  }
  .bottom{
    width:100%;
  }
  .download{
    border:1px solid #3cc068;
    color:#3cc068;
    padding:5px 15px;
    border-radius: 5px;
  }
  .intro{
    display: inline-block;
    width:200px;
    overflow: hidden;
    white-space:nowrap;
    -ms-text-overflow:ellipsis;
    -o-text-overflow:ellipsis;
    text-overflow:ellipsis;
  }
</style>
