<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no,initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="css/materialize/css/materialize.css" >
<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet"> 
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
<script src="js/jquery-3.2.1.js" ></script>
<script src="css/materialize/js/materialize.js" ></script>

<script type="text/javascript">
$(document).ready(function(){
	$('.carousel.carousel-slider').carousel({fullWidth: true});
	 $(".button-collapse").sideNav();
})


</script>


</head>
<body>



  <ul id="slide-out" class="side-nav">
    <li><div class="user-view">
      <div class="background">
        <img src="images/office.jpg">
      </div>
      <a href="#!user"><img class="circle" src="images/yuna.jpg"></a>
      <a href="#!name"><span class="white-text name">John Doe</span></a>
      <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
    </div></li>
    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><div class="divider"></div></li>
       <li><a href="sass.html">Início</a></li>
        <li><a href="collapsible.html">T-Shirts</a></li>
        <li><a href="collapsible.html">Artesanatos</a></li>
        <li><a href="collapsible.html">Canecas</a></li>
        <li><a href="collapsible.html">Sandálias</a></li>     
          <li><a href="collapsible.html">Contato</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
  </ul>
  
  
  <a id="logo" class="left">Shirt World</a>
  
  <a href="#" data-activates="slide-out" class="right button-collapse black-text" >
  <i id="menu-icon" class="material-icons" style="font-size: 35px;">menu</i></a>
        


 





</body>
</html>