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



		$('.carousel.carousel-slider').carousel({
			fullWidth : true
		});
		$(".button-collapse").sideNav();
		$('.slider').slider();
		 $('.parallax').parallax();
			$('.dropdown-button').dropdown();
		
			 
	});
</script>


</head>
<body>

	


	
	<div class="top_info">
		
		<div class="row">
			<div class="col l4">
				<img class="img-responsive" src="https://pt.freelogodesign.org/img/logo.png" style="margin:3%;" width="200px" height="120px" />
			</div>
			<div class="col l2">
				<p> Faça seu orçamento:<br>
    			(88) 3691 0666 </p>
			</div>
			<div class="col l2">
				<p>WhatsApp:<br>
    			(88) 9 7889-9666</p>
			</div>
			<div class="col l4">
				<form method="get" action="search.jsp">
						<div class="row">
							<div class="input-field col s3"></div>

							<div class="input-field col s12">

								<input value="" id="first_name2" name="s" type="text" class="validate">
								<label class="active" for="first_name2">Digite o nome do
								produto que está procurando.</label>
								<button type="submit" class="btn indigo black waves-effect right">
									<i class="material-icons">search</i>
								</button>
							</div>
		</div>
	</form>
			</div>
		
		</div>
		
	</div>
	
  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content black'>
  <div class="row">
  	<div class="col l6">
  			<h4 class="center"> Vestimento </h4>
  		 <li class="white-text"><a href="#!">Camisas</a></li>
    	<li><a href="#!">Bermudas</a></li>
    	<li><a href="#!">Calças</a></li>
    	<li><a href="#!">Tênis</a></li>
    	<li><a href="#!">Copos</a></li>
   		 <li><a href="#!">Bonés</a></li>
    	<li class="divider"></li>
    	<li><a href="#!">three</a></li>
    	<li><a href="#!"><i class="material-icons">view_module</i>four</a></li>
   		 <li><a href="#!"><i class="material-icons">cloud</i>five</a></li>
  	</div>
  	  	<div class="col l6">
  	  		<h4 class="center"> Produtos Aleatórios </h4>
  		 <li class="white-text"><a href="#!">Agendas</a></li>
    	<li><a href="#!">Canetas</a></li>
    	<li><a href="#!">Capa de Celular</a></li>
   		 <li><a href="#!">Mochilas</a></li>
   		 <li><a href="#!">Carteiras</a></li>
   		 	<li><a href="#!">Telhas</a></li>
    	<li class="divider"></li>
    	<li><a href="#!">three</a></li>
    	<li><a href="#!"><i class="material-icons">view_module</i>four</a></li>
   		 <li><a href="#!"><i class="material-icons">cloud</i>five</a></li>
  	</div>
  </div>
  	
  
   
  </ul>

	<nav>
	<div class="nav-wrapper white ">
		<ul class="right hide-on-med-and-down black-text">
			<li><a class="black-text pulse" href="sass.html"><i
					class="material-icons left ">home</i>Inicio</a></li>
			<li><a class="black-text pulse" href="sass.html"><i
					class="material-icons left">assignment</i>Sobre Nós</a></li>
					
			<li> <a class='dropdown-button btn black white-text pulse' href='#' data-activates='dropdown1'>
			<i class="material-icons left ">view_list</i>Produtos<i
					class="material-icons right">arrow_drop_down</i></a></li>
			<li><a class="black-text pulse" href="#categorias"><i
					class="material-icons left ">control_point</i>Categorias</a></li>			
			<li><a class="black-text pulse" href="sass.html"><i
					class="material-icons left ">control_point</i> Encomendar / Personalizar</a></li>		
					
			<li><a class="black-text pulse" href="sass.html">
			<i class="material-icons left">mail</i>Contato</a></li>
			<li><a class="black-text  " href="sass.html">
			<i class="material-icons left ">shopping_cart</i>R$ 0,00 <span class="badge">Vazio</span></a></li>
		</ul>
	</div>
	</nav>

	

	<div class="slider">
		<ul class="slides">
		
			<li><img src="https://hdwallpaperz.net/wp-content/uploads/2016/12/anime-girl-hd-wallpaper.jpg"> <!-- random image -->
				<div class="caption center-align">
					<h3>CWear </h3>
					<h5 class="light grey-text text-lighten-3">O melhor lugar para sua compra personalizada.</h5>
				</div></li>
			<li><img src="http://avante.biz/wp-content/uploads/Naruto-Shippuden-Wallpaper-Hd/Naruto-Shippuden-Wallpaper-Hd-024.jpg"> <!-- random image -->
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
				
				<li><img src="images/captain_america_civil_war_marvel_poster-1920x1080.jpg"> <!-- random image -->
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
              	<button type="submit" class="btn waves-effect  black" >
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
      <div class="parallax"><img src="http://www.entertainmentwallpaper.com/images/res1920x1080/movie/x-men-days-of-future-past02.jpg"></div>
    </div>
       
	<div class="container">
		<h3 class="center" id="categorias"> CATEGORIAS </h3>
		
		  <div class="row">
    		<%for(int i=1;i<9;i++){ %>
    		<div class="col s12 m4 l3">
      			<div class="card">
        		<div class="card-image">
         			<img src="images/sample-1.jpg">
          			<span class="card-title">Cadernos</span>
         			 <a class="btn-floating halfway-fab waves-effect waves-light indigo darken-4"><i class="material-icons">add</i></a>
        		</div>
        		<div class="card-content">
          			<p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
       			 </div>
      			</div>
      		</div>
    <%} %>
  </div>
          
	
	
	
	</div>

	<footer class="page-footer black">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">Localização</h5>
				<p class="grey-text text-lighten-4">Rua da Universidade Federal do Ceará  - N° 12345 </p>
				<p class="grey-text text-lighten-4">Bairro: O bairro da Universidade </p>
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