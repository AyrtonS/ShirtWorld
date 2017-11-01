<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no,initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="css/materialize/css/materialize.css">
<link href="https://fonts.googleapis.com/css?family=Abel"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet">
<script src="js/jquery-3.2.1.js"></script>
<script src="css/materialize/js/materialize.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$('.dropdown-button').dropdown({
			inDuration : 300,
			outDuration : 225,
			constrainWidth : false, // Does not change width of dropdown to that of the activator
			hover : true, // Activate on hover
			gutter : 0, // Spacing from edge
			belowOrigin : false, // Displays dropdown below the button
			alignment : 'left', // Displays dropdown with edge aligned to the left of button
			stopPropagation : false
		// Stops event propagation
		});

		$('.dropdown-button').dropdown('open');

		$('.carousel.carousel-slider').carousel({
			fullWidth : true
		});
		$(".button-collapse").sideNav();
		$('.slider').slider();
		 $('.parallax').parallax();

	})
</script>


</head>
<body>


	<!-- Dropdown Structure -->
	<ul id="dropdown1" class="dropdown-content">
		<li><a href="#!">one</a></li>
		<li><a href="#!">two</a></li>
		<li class="divider"></li>
		<li><a href="#!">three</a></li>
	</ul>


	<!-- Dropdown Structure -->
	<ul id="dropdown2" class="dropdown-content">
		<li><a href="#!">Camisas</a></li>
		<li><a href="#!">Copos</a></li>
		<li class="divider"></li>
		<li><a href="#!">three</a></li>
	</ul>


	<nav>
	<div class="nav-wrapper indigo darken-4">
		<ul class="right hide-on-med-and-down black-text">
			<li><a class="white-text" href="sass.html"><i
					class="material-icons left">home</i>Inicio</a></li>
			<li><a class="white-text" href="sass.html"><i
					class="material-icons left">assignment</i>Sobre Nós</a></li>
			<li><a class="white-text" class="dropdown-button" href="#!"
				data-activates="dropdown2"> <i class="material-icons left">shopping_cart</i>Produtos<i
					class="material-icons right">arrow_drop_down</i></a></li>
			<li><a class="white-text" href="sass.html">
			<i class="material-icons left">mail</i>Contato</a></li>
		</ul>
	</div>
	</nav>

	<form method="get" action="search.jsp">
		<h3 class="center" style="color:#283593;">Pesquise Produtos</h3>
		<div class="row">
			<div class="input-field col s3"></div>

			<div class="input-field col s6">

				<input value="" id="first_name2" name="s" type="text" class="validate">
				<label class="active" for="first_name2">Digite o nome do
					produto que está procurando.</label>
				<button type="submit" class="btn indigo darken-4 waves-effect right">
					<i class="material-icons">search</i>
				</button>
			</div>
		</div>
	</form>

	<div class="slider">
		<ul class="slides">
		
			<li><img src="https://hdwallpaperz.net/wp-content/uploads/2016/12/anime-girl-hd-wallpaper.jpg"> <!-- random image -->
				<div class="caption center-align">
					<h3>This is our big Tagline!</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
			<li><img src="https://images2.alphacoders.com/604/thumb-1920-604626.png"> <!-- random image -->
				<div class="caption left-align">
					<h3>Left Aligned Caption</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
			<li><img src="http://hdwallpaper2013.com/wp-content/uploads/2013/02/One-Piece-Crew-Pictures-HD-Wallpaper.jpg"> <!-- random image -->
				<div class="caption right-align">
					<h3>Right Aligned Caption</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
			<li><img src="https://images2.alphacoders.com/764/764593.jpg"> <!-- random image -->
				<div class="caption center-align">
					<h3>This is our big Tagline!</h3>
					<h5 class="light grey-text text-lighten-3">Here's our small
						slogan.</h5>
				</div></li>
		</ul>
	</div>
	<br>
	
	
	<div class="container">
	<h4>Produtos Mais Acessados</h4>
      <div class="row">
      <% for(int i=1;i<17;i++){ %>
        <div class="col s12 m6 l3">
          <div class="card">
            <div class="card-image">
              <img src="https://img.elo7.com.br/product/244x194/1A88987/camiseta-anime-dragon-ball-super-goku-black-full-hd-11-camisa-alta-resolucao.jpg">
              <span class="card-title">Product name</span>
            </div>
            <div class="card-content">
              	<h5 style="color:#1a237e ">Product Name</h5>
              	<h6>Product Price R$</h6>
              	<p> DESCRIPTIOOOOOOOOOOOOOOONN</p>
              		
            </div>
            <div class="card-action">
              	<button type="submit" class="btn waves-effect indigo darken-4" >
              	<i class="material-icons left">add_shopping_cart</i>
              	Adicionar no Carrinho
              	</button>
            </div>
          </div>
        </div>
        	
	<%} %>
      </div>
	</div>
	
	
	
	 <div class="parallax-container">
      <div class="parallax"><img src="https://images2.alphacoders.com/604/thumb-1920-604626.png"></div>
    </div>
        

			  <div class="video-container">
       			 <iframe width="853" height="480" src="https://www.youtube.com/watch?v=mrc2M7cNPWk" frameborder="0" allowfullscreen></iframe>
      		</div>
		
		
	
	
	

	<footer class="page-footer indigo darken-4">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">Footer Content</h5>
				<p class="grey-text text-lighten-4">You can use rows and columns
					here to organize your footer content.</p>
			</div>
			<div class="col l4 offset-l2 s12">
				<h5 class="white-text">Links</h5>
				<ul>
					<li><a class="grey-text text-lighten-3" href="#!">Trabalhe Conosco</a></li>
					<li><a class="grey-text text-lighten-3" href="#!">Devolução de Produtos</a></li>
					<li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
					<li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="container">
			© 2014 Copyright GRUPO 2 - EMPREENDEDORISMO <a class="grey-text text-lighten-4 right"
				href="#!">More Links</a>
		</div>
	</div>
	</footer>



</body>
</html>