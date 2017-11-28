<%@page import="shirtworld.model.Produto"%>
<%@page import="java.util.List"%>
<%@page import="shirtworld.repository.ProdutoRepository"%>
<%@page import="shirtworld.database.ConnectionDatabase"%>
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

	
	<jsp:include page = "top_menu.jsp" />
		
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
      <% List<Produto> produtos = ProdutoRepository.read(); %>
      <% for(Produto produto : produtos){ %>
        <div class="col s12 m6 l4">
          <div class="card" style="padding:5%;">
            <div class="card-image">
              <img src="https://img.elo7.com.br/product/244x194/1A88987/camiseta-anime-dragon-ball-super-goku-black-full-hd-11-camisa-alta-resolucao.jpg">
              <span class="card-title"><%=produto.getNome() %></span>
            </div>
            <form action="carrinho" method="get">
            <div class="card-content">
              	<h5 style="color:#1a237e "><%=produto.getNome() %></h5>
              	<input name="nome" type="hidden" value="<%=produto.getNome() %>">
              	<h6><b>Preço do Produto R$ <%=produto.getPreco() %></b></h6>
              	<input name="preco" type="hidden" value="<%=produto.getPreco() %>">
              	<p> <%=produto.getDescricao() %>
              			<input name="descricao" type="hidden" value="<%=produto.getDescricao() %>">
              			<input name="idProduto" type="hidden" value="<%=produto.getId() %>">
              			<input name="idCart" type="hidden" value="${usuario.getCarrinhoId()}">
              			</p>
              		
            </div>
            <div class="card-action">
              	<button type="submit" class="btn waves-effect  black" >
              	<i class="material-icons left">add_shopping_cart</i>
              	ADD NO CARRINHO
              	</button>
              	</form>
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
         			<img src="http://www.adirferreira.com.br/wp-content/uploads/2015/09/TV-Series.png">
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
	
	
	<jsp:include page = "footer.jsp" />



</body>
</html>