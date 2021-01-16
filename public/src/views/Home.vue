<template>
  <div class="home">
    <!-- Navbar -->
    <nav id="nav">
      <ul class="links">
        <li class="active"><a href="/">Home</a></li>
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
          <h2><a>What are you in<br /> the mood for?</a></h2>
          <p>Get a list of recipes based on type of alcohol below<br /></p>
          <!-- <p>OR</p> -->
          <p>Search by ingredients from the search page </p>
          <p>Or if you can't decide, get a random recipe!</p>
        </header>

      </article>

      <!-- Posts -->
      <section class="posts">
        <article>
          <header>

            <h2><a href="/recipes?search=category&category=Vodka">Vodka</a></h2>
          </header>
          <a href="/recipes?search=category&category=Vodka" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
          <p>Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. Traditionally, vodka is made by the distillation of fermented cereal grains or potatoes, though some modern brands use other substances, such as fruits or sugar.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Gin">Gin</a></h2>
          </header>
          <a href="/recipes?search=category&category=Gin" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
          <p>Gin is a distilled alcoholic drink that derives its predominant flavour from juniper berries (Juniperus communis). Gin is one of the broadest categories of spirits, all of various origins, styles, and flavour profiles, that revolve around juniper as a common ingredient.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Whiskey">Whiskey</a></h2>
          </header>
          <a href="/recipes?search=category&category=Whiskey" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
          <p>Whisky or whiskey is a type of distilled alcoholic beverage made from fermented grain mash. Various grains (which may be malted) are used for different varieties, including barley, corn (maize), rye, and wheat. Whisky is typically aged in wooden casks, generally made of charred white oak.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Rum">Rum</a></h2>
          </header>
          <a href="/recipes?search=category&category=Rum" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
          <p>Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.\r\n\r\nThe majority of the world's rum production occurs in the Caribbean and Latin America.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Tequila">Tequila</a></h2>
          </header>
          <a href="/recipes?search=category&category=Tequila" class="image fit"><img src="images/pic06.jpg" alt="" /></a>
          <p>Tequila is a regionally specific distilled beverage and type of alcoholic drink made from the blue agave plant, primarily in the area surrounding the city of Tequila, 65 km (40 mi) northwest of Guadalajara, and in the highlands (Los Altos) of the central western Mexican state of Jalisco.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Brandy">Brandy</a></h2>
          </header>
          <a href="/recipes?search=category&category=Brandy" class="image fit"><img src="images/pic07.jpg" alt="" /></a>
          <p>Brandy is a spirit produced by distilling wine. Brandy generally contains 35–60% alcohol by volume (70–120 US proof) and is typically taken as an after-dinner drink. Some brandies are aged in wooden casks, some are coloured with caramel colouring to imitate the effect of aging, and some brandies are produced using a combination of both aging and colouring.</p>
        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Liqueur">Liqueur</a></h2>
          </header>
          <a href="/recipes?search=category&category=Liqueur" class="image fit"><img src="images/pic10.jpg" alt="" /></a>
          <p>A liqueur is an alcoholic drink composed of distilled spirits and additional flavorings such as sugar, fruits, herbs, and spices. Often served with or after dessert, they are typically heavily sweetened and un-aged beyond a resting period during production, when necessary, for their flavors to mingle.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Liquor">Schnapps</a></h2>
          </header>
          <a href="/recipes?search=category&category=Liquor" class="image fit"><img src="images/pic11.jpg" alt="" /></a>
          <p>Schnapps or schnaps is a type of alcoholic beverage that may take several forms, including distilled fruit brandies, herbal liqueurs, infusions, and flavored liqueurs made by adding fruit syrups, spices, or artificial flavorings to neutral grain spirits.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Beer">Beer</a></h2>
          </header>
          <a href="/recipes?search=category&category=Beer" class="image fit"><img src="images/pic12.jpg" alt="" /></a>
          <p>Beer is the oldest and most widely consumed alcoholic drink in the world, and the third most popular drink overall after water and tea. Beer is brewed from cereal grains — most commonly from malted barley, though wheat, maize (corn), and rice are also used. During the brewing process, fermentation of the starch sugars in the wort produces ethanol and carbonation in the resulting beer.</p>

        </article>
        <article>
          <header>
            <h2><a href="/recipes?search=category&category=Wine">Wine</a></h2>
          </header>
          <a href="`/recipes?search=category&category=Wine`" class="image fit"><img src="images/pic13.jpg" alt="" /></a>
          <p>Wine (from Latin vinum) is an alcoholic beverage made from grapes, generally Vitis vinifera, fermented without the addition of sugars, acids, enzymes, water, or other nutrients. Yeast consumes the sugar in the grapes and converts it to ethanol and carbon dioxide. Different varieties of grapes and strains of yeasts produce different styles of wine.</p>

        </article>
      </section>

      <!-- Footer -->
 

    </div>
  </div>
</template>

<style>
</style>

<script>
export default {
  data: function () {
    return {
      message: "Happy Hour",
    };
  },
  created: function () {},
  methods: {
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