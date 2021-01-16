<template>
  <div class="recipes-index">
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

      <!-- Featured Post -->
      <article class="post featured">
        <header class="major">
          <h2><a>{{this.$route.query.category}}</a></h2>
          <p>There are {{ recipes.length }} recipes to choose from!</p>
        </header>
      </article>

      <!-- Posts -->
      <section class="posts">
        <article v-for="recipe in recipes">
          <header>
            <h2><a v-bind:href="'/recipes/' + recipe.id">{{ recipe.name }}</a></h2>
          </header>
          <a v-bind:href="'/recipes/' + recipe.id"><p>{{ recipe.instructions }}</p></a>
        </article>
        
      </section>

      <!-- Footer -->
      <footer>
      </footer>

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
      message: "Look at all these awesome recipes!",
      recipes: [],
      name: "",
    };
  },
  created: function () {
    this.recipeIndex();
  },
  methods: {
    recipeIndex: function () {
      console.log("recipes indexxxx");
      var params = {
        search: this.search,
        category: this.category,
      };
      console.log(this.$route.query);
      axios
        .get(
          "/api/recipes?search=" +
            this.$route.query.search +
            "&category=" +
            this.$route.query.category
        )
        .then((response) => {
          console.log(response.data);
          this.recipes = response.data;
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