<template>
  <div id="app">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1>HAPPY<br />
						HOUR</h1>
						<p></p>

					</div>

				<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo">Massively</a>
					</header>

				<!-- Nav -->
        <!-- nav in each page for class=active -->

          <router-view />


				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>
          <div class="bg fixed" style="transform: none;"></div>
          <a href="#navPanel" id="navPanelToggle" class="">Menu</a>
       
			</div>
  </div>
</template>

<style>
</style>

