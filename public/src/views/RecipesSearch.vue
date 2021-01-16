<template>
  <div class="recipes-search">
    <!-- Navbar -->
    <nav id="nav">
      <ul class="links">
        <li><a href="/">Home</a></li>
        <li class="active"><a href="/search">Search</a></li>
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
    <!-- Footer -->
    <footer id="footer">
      <section>
          <div>
            <div>
              <label>Search by a specific recipe name</label>
              <p><ejs-autocomplete :dataSource='recipes' :fields='fields' :placeholder="waterMark2" type="text" v-model="name" :noRecordsTemplate='nTemplate'  popupHeight="0px" popupWidth="0px"></ejs-autocomplete></p>
              <p><button v-on:click="searchName()">Search</button></p>
              <label>Can't decide?</label>
              <p><button v-on:click="getRandomRecipe()">Get a Random Recipe!</button></p>
            </div>
          </div>
      </section>
      <section class="split contact">
        <section class="alt">
          <div>
            <div>
              <label>Search by ingredients!</label>
              <p><ejs-autocomplete :dataSource='ingredients' :fields='fields' :placeholder="waterMark" type="text" v-model="ingredient1"></ejs-autocomplete></p>
              <p><ejs-autocomplete :dataSource='ingredients' :fields='fields' :placeholder="waterMark" type="text" v-model="ingredient2"></ejs-autocomplete></p>
              <p><ejs-autocomplete :dataSource='ingredients' :fields='fields' :placeholder="waterMark" type="text" v-model="ingredient3"></ejs-autocomplete></p>
              <button v-on:click="searchIngredient()">Search</button>
            </div>
          </div>
        </section>
      </section>
    </footer>
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


<script>
import axios from "axios";

import Vue from "vue";
import { AutoCompletePlugin } from "@syncfusion/ej2-vue-dropdowns";

Vue.use(AutoCompletePlugin);
export default {
  data: function () {
    return {
      message: "Do we have what your looking for?",
      recipes: [],
      waterMark: "Ingredient",
      waterMark2: "Recipe",
      nTemplate: "",
      ingredients: [],
      fields: { value: "name" },
      name: "",
      ingredient1: "",
      ingredient2: "",
      ingredient3: "",
    };
  },
  created: function () {
    this.ingredientsIndex();
  },
  methods: {
    searchName: function () {
      console.log("recipes searchhhhh");
      // console.log(this.$route.query);
      axios
        .get("/api/recipes?search=name&name=" + this.name)
        .then((response) => {
          console.log(response.data);
          this.recipes = response.data;
        });
    },
    searchIngredient: function () {
      console.log("recipes searchhhhh");
      // console.log(this.$route.query);
      axios
        .get(
          "/api/recipes?search=ingredient&ingredient1=" +
            this.ingredient1 +
            "&ingredient2=" +
            this.ingredient2 +
            "&ingredient3=" +
            this.ingredient3
        )
        .then((response) => {
          console.log(response.data);
          this.recipes = response.data;
        });
    },
    ingredientsIndex: function () {
      console.log("ingredients index");
      axios.get("/api/ingredients").then((response) => {
        // console.log(response.data);
        this.ingredients = response.data;
      });
    },
    getRandomRecipe: function () {
      console.log("recipe random");
      axios.get("/api/recipes").then((response) => {
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

<style>
@import "../../node_modules/@syncfusion/ej2-base/styles/material.css";
@import "../../node_modules/@syncfusion/ej2-inputs/styles/material.css";
@import "../../node_modules/@syncfusion/ej2-vue-dropdowns/styles/material.css";
</style>
