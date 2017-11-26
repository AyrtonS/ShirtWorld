<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="menu_admin.jsp" />

<div class="container">
<h4>Adicionar Produto</h4>

<form action="../Produto" method="post">

<div class="row">
		<div class="input-field col s12">
			<input name="nome" id="nome" type="text" class="validate" required>
			<label for="nome">Nome do Produto</label>
		</div>
</div>


<div class="row">
		<div class="input-field col s12">
			<input name="preco" id="preco" type="number" class="validate" required>
			<label for="preco">Preço do Produto</label>
		</div>
</div>


<div class="row">
		<div class="input-field col s12">
			<textarea name="descricao" id="textarea1" class="materialize-textarea"></textarea>
          <label for="textarea1">Descrição do Produto</label>
		</div>
</div>

<div class="row">
		<div class="input-field col s12">
			<button type="submit" class="btn black white-text right"><i class="material-icons left">send</i> Salvar</button>
		</div>
</div>


</form>
</div>



</body>
</html>