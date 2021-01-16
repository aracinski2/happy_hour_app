<template>
  <div class="recipes-show">
    <!-- Navbar -->
    <nav id="nav">
      <ul class="links">
        <li><a href="/">Home</a></li>
        <li><a href="/search">Search</a></li>
        <li><a href="/favorites">Favorites
        </a></li>
        <li v-if="!isLoggedIn()"><a href="/login">Login</a></li>
        <li v-if="isLoggedIn()"><a href="/logout">Logout</a></li>
        <li v-if="!isLoggedIn()"><a href="/signup">Signup</a></li>
      </ul>
      <ul class="icons">
        <!-- <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li> -->
        <li><a href="https://www.linkedin.com/in/alexander-racinski/" class="icon brands fa-linkedin"><span class="label">LinkedIn</span></a></li>
        <li><a href="https://github.com/aracinski2" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
      </ul>
    </nav>
    <!-- Main -->
		<div id="main">

      <!-- Post -->
      <section class="post">
        <header class="major">
          <h1>{{ recipe.name }}</h1>
          <p>{{ recipe.instructions }}<br />
            <h3>Ingredients:</h3>
            <div v-for="(ingredient, index) in recipe.ingredients">
              <h5>{{ ingredient.name }}: {{ recipe.measurements[index].measurement }}</h5>
          </div>
          <button v-on:click="favoritesCreate()">Save!</button></p>
          </header>
      </section>

    </div>
    
  </div>
</template>

<style>
</style>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Look at this super specific recipe!",
      recipe: {},
    };
  },
  created: function () {
    this.recipeShow();
  },
  methods: {
    recipeShow: function () {
      console.log("recipes showwww");
      console.log(this.$route.params.id);
      axios.get("/api/recipes/" + this.$route.params.id).then((response) => {
        console.log(response.data);
        this.recipe = response.data;
      });
    },
    favoritesCreate: function () {
      console.log("favorite create");
      console.log(this.$route.params.id);
      var params = {
        recipe_id: this.$route.params.id,
      };

      axios.post("/api/favorites", params).then((response) => {
        console.log(response.data);
        this.favorite = response.data;
      });
    },
    isLoggedIn: function () {
      if (localStorage.getItem("jwt")) {
        return true;
      } else {
        return false;
      }
    },
  },
};
</script>