<%@page import="java.util.List"%>
<%@page import="shirtworld.model.Produto"%>
<%@page import="shirtworld.repository.ProdutoRepository"%>
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




	<jsp:include page="menu_admin.jsp" />

	<div class="container">
		<div class="row">
			<form>
				<h3>Buscar Produto</h3>
				<input name="busca" type="search"
					placeholder="Busque aqui seu produto..." />
				<button class="btn black white-text right">
					<i class="material-icons">search</i>
				</button>

			</form>

		</div>

		<table class="striped">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Preço</th>
					<th>Descricao</th>
				</tr>
			</thead>

			<tbody>

				<%
					List<Produto> produtos = ProdutoRepository.read();
					if (produtos == null || produtos.size()==0) {
				%>
				<tr>
					Não Existem produtos
					<a href="add-product.jsp">Adicione</a> seu primeiro produto
				</tr>

				<%
					} else {
						for (Produto produto : produtos) {
				%>
				<tr>
					<td><%=produto.getNome()%></td>
					<td><%=produto.getPreco()%></td>
					<td><%=produto.getDescricao()%></td>
					<td><a class="btn indigo darken-4"><i class="material-icons">edit</i></a></td>
					<td><a class="btn indigo darken-4"><i class="material-icons">delete</i></a></td>
				</tr>
				<%
					}
					}
				%>

			</tbody>
		</table>

	</div>


</body>
</html>