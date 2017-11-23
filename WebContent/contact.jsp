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


<div class="container">

	<h3>Entre em contato conosco:</h3>

	<div class="row">
	
		<div class="input-field col s6">
			<input id="nome" type="text" name="" validate>
			<label for="nome">Informe seu nome:</label>
		
		</div>
	
	</div>
	
	<div class="row">
		<div class="input-field col s6">
			<input id="email" type="email" name="" validate>
			<label for="email">Informe seu email:</label>
		
		</div>
	
	</div>
	
	
		<div class="row">
				<div class="input-field col s12">
					<textarea id="msg-contato" class="materialize-textarea" required></textarea>
					<label for="msg-contato">Mensagem de contato</label>
				</div>
			</div>
			
			<div class="row">
				<div class="col s12">

					<div class="input-field inline right">
						<button type="submit" class="btn btn-info indigo darken-4 right-align">
							<i class="material-icons left">send</i>Enviar Mensagem
						</button>
					</div>
				</div>
			</div>	
	
	
</div>

<jsp:include page="footer.jsp" />




</body>
</html>