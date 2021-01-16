<template>
  <div class="login">
    <!-- Navbar -->
    <nav id="nav">
      <ul class="links">
        <li><a href="/">Home</a></li>
        <li><a href="/search">Search</a></li>
        <li><a href="/favorites">Favorites
        </a></li>
        <li v-if="!isLoggedIn()" class="active"><a href="/login">Login</a></li>
        <li v-if="isLoggedIn()"><a href="/logout">Logout</a></li>
        <li v-if="!isLoggedIn()"><a href="/signup">Signup</a></li>
      </ul>
      <ul class="icons">
        <li><a href="https://www.linkedin.com/in/alexander-racinski/" class="icon brands fa-linkedin"><span class="label">LinkedIn</span></a></li>
        <li><a href="https://github.com/aracinski2" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
      </ul>
    </nav>
    <!-- Footer -->
    <footer id="footer">
      <section>
        <form v-on:submit.prevent="submit()">
          <h1>Login</h1>
          <ul>
            <li class="text-danger" v-for="error in errors">{{ error }}</li>
          </ul>
          <p><div class="form-group">
            <label>Email:</label>
            <input type="email" class="form-control" v-model="email">
          </div></p>
          <p><div class="form-group">
            <label>Password:</label>
            <input type="password" class="form-control" v-model="password">
          </div></p>
          <input type="submit" class="btn btn-primary" value="Submit">
        </form>
      </section>
    </footer>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      email: "",
      password: "",
      errors: [],
    };
  },
  methods: {
    submit: function () {
      var params = {
        email: this.email,
        password: this.password,
      };
      axios
        .post("/api/sessions", params)
        .then((response) => {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          this.$router.push("/");
        })
        .catch((error) => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
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
