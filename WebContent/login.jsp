<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ----------------------- MENU ---------------------------------- -->
	
	
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
	
	
	<!--  FORMULARIO :D -->
	

<div class="container">

	<div class="row">
		<div class="col l3"></div>
		
		<div class="col l6" style="padding:7%;">
				<h4 class="center">Realize o Login</h4>
			 <form method="post" action="login">
			
			 
 				<h6>Usuário : </h6><input id="user" name="login" type="text" placeholder="Usuário">
			    <h6>Senha : </h6><input id="pass" name="password" type="password"  placeholder="Senha">
		
 				<button class="btn black white-text right" type="submit">LOG IN</button>
 				Novo no site? <a href="cadastro.jsp">Cadastre-se</a>
 
 			</form>
			
		
		</div>
		
		<div class="col l3"></div>
	</div>


</div>	
	

	<jsp:include page = "footer.jsp" />

</body>
</html>