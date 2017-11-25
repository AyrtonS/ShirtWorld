<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
 $(document).ready(function(){
 
 		
 $('select').material_select();
 
 });
 
 </script>
 
</head>
<body>



	
	<div class="top_info">
		<div class="row">
		
			<div class="col l9"></div>
			<div class="col l3">
					<a href="login.jsp" id="login_button" class="btn black white-text right  hoverable">
					<i class="material-icons left">perm_identity</i>Login / Cadastre-se</a>
			</div>
	
		</div>
		
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
			<li><a class="black-text pulse" href="index.jsp"><i
					class="material-icons left ">home</i>Inicio</a></li>
			<li><a class="black-text pulse" href="about-us.jsp"><i
					class="material-icons left">assignment</i>Sobre Nós</a></li>
					
			<li> <a class='dropdown-button btn black white-text pulse' href='#' data-activates='dropdown1'>
			<i class="material-icons left ">view_list</i>Produtos<i
					class="material-icons right">arrow_drop_down</i></a></li>
			<li><a class="black-text pulse" href="#categorias"><i
					class="material-icons left ">reorder</i>Categorias</a></li>			
			<li><a class="black-text pulse" href="customize.jsp"><i
					class="material-icons left ">control_point</i> Encomendar / Personalizar</a></li>		
					
			<li><a class="black-text pulse" href="sass.html">
			<i class="material-icons left">mail</i>Contato</a></li>
			<li><a class="black-text  " href="carrinho.jsp">
			<i class="material-icons left ">shopping_cart</i>R$ 0,00 <span class="badge">Vazio</span></a></li>
		</ul>
	</div>
	</nav>


</body>
</html>