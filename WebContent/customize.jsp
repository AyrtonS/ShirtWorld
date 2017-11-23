<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:include page="top_menu.jsp" />


 <h5>Nessa seção, você customizar seu produto </h5>




<div class="container">
    <form class="col s12 l12">
      <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="first_name" type="text" class="validate">
          <label for="first_name">First Name</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate">
          <label for="last_name">Last Name</label>
        </div>
      </div>
      
         <div class="row">
        <div class="input-field col s12">
          <select id="tipo" class="validate">
          		<option>Agenda</option>
          	<option>Camisa</option>
          	<option>Copo</option>
          	<option>Canetas</option>	
          
          
          </select>
          <label for="tipo">Tipo de Produto</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          
          <h6>Estimativa de preço que pretendes gastar</h6>
          <p class="range-field">
      	  <input type="range" id="test5" min="0" max="100" />

    </p>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
      </div>
           <div class="row">
        <div class="input-field col s12">
          <input id="file" type="file" class="validate">
         
        </div>
      </div>
      <div class="row">
        <div class="col s12">
          
          <div class="input-field inline">
 				<button class="btn btn-info indigo right-align">Solicitar Orçamento</button>
          </div>
        </div>
      </div>
    </form>
 </div>
        




<jsp:include page="footer.jsp" />

 </body>
</html>