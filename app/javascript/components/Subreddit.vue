<template>
  <div class="w3-panel">
      <ul class="w3-ul w3-card w3-light-gray">
        <li class="w3-blue-gray w3-display-container w3-large">
          /r/{{ name }}
          <a class="w3-display-right w3-button" data-method="delete" :href="'/subreddits/' + id">&times;</a>
        </li>
        <div style="height: 500px; overflow: auto;">
        <li v-for="post in posts">
          <Item :post="post"></Item>
        </li>
        </div>
      </ul>
  </div>
</template>

<script>
import Item from './Item.vue'

export default {
  name: 'Subreddit',
  props: ['name', 'id'],
  data: function() {
    return { posts: [] }
  },
  components: {
    Item
  },
  mounted: function() {
    fetch("https://www.reddit.com/r/" + this.name + "/top.json?limit=10")
    .then(response => response.json())
    .then(resp => {
      this.posts = resp.data.children;
    })
  }
}
</script>
