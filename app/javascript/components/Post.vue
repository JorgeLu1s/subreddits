<template>
  <div>
    <div :id="id" class="w3-modal">
      <div class="w3-modal-content">
        <header class="w3-container w3-blue-gray">
          <span v-on:click="close(id)" class="w3-button w3-display-topright">&times;</span>
          <h4>{{post.data.title}}</h4>
        </header>
        <div class="w3-container">
          <img v-if="post.data.thumbnail" class="w3-image" :src="post.data.url" />
          <div>{{post.data.content}}</div>
        </div>
        <footer class="w3-container w3-blue-gray">
          <p>posted by {{post.data.author}}</p>
          <p><span class="w3-text-green"> ups: {{post.data.ups}} </span> - <span class="w3-text-red">downs: {{post.data.downs}}</span></p>
        </footer>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Post',
  props: ['id', 'post'],
  methods: {
    close: function (id) {
      document.getElementById(id).style.display = 'none';
    }
  }
}
</script>
