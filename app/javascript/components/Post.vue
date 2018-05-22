<template>
  <div>
    <a :href="post.data.url" :title="post.data.title" target="_blank" class="w3-large w3-text-black w3-hover-text-white w3-hover-blue-gray">
      {{ post.data.title }}
    </a>
    <br>
    <img v-if="post.data.thumbnail" :src="post.data.thumbnail" class="w3-bar-item" style="width: 85px"/>
    <br v-if="post.data.thumbnail">
    <a :href="'http://reddit.com' + post.data.permalink" target="_blank">forum</a>
    <span class="w3-tiny w3-badge w3-blue-gray"i>{{ post.data.num_comments }}</span>
    <span class="w3-tiny w3-badge w3-green"i>{{ post.data.ups }}</span>
  </div>
</template>

<script>
export default {
  name: 'Post',
  props: ['post']
}
</script>
