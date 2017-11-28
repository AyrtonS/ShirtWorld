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

<jsp:include page="top_menu.jsp" />

<form action="cadastro" method="post">


<div class="container">
		
		
		
	<h3>Cadastre-se na CWear</h3>
	 	<c:if test="${not empty errMessage}">
			 		<h5 style="color:red;">${errMessage}</h5>
			 	</c:if>
	<div class="row">
	<div class="input-field col s6">
		
		<input type="text" id="login" name="login" required>
		<label for="login">Login</label>
		</div>
		
		<div class="input-field col s8">
		<input type="email" id="email" name="email" required>
		<label for="email">Seu E-Mail Válido</label>
		</div>
		
		<div class="input-field col s12">
		<input type="password" id="senha" name="senha" required>
		<label for="senha">Sua senha</label>
		</div>
		
		<button class="btn black white-text" type="submit" ><i class="material-icons left">send</i>Salvar</button>
	
</div>	
</div>
</form>


<jsp:include page="footer.jsp" />



</body>
</html>