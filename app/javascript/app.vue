<template>
  <div class="w3-row">
    <div v-for="subreddit in subreddits" class="w3-col m4">
      <Subreddit :name="subreddit.name" :id="subreddit.id"></Subreddit>
    </div>
  </div>
</template>

<script>
import Subreddit from './components/Subreddit.vue'

export default {
  props: ['subreddits'],
  data: function () {
    return {
    }
  },
  components: {
    Subreddit
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
