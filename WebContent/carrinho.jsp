
<%@page import="shirtworld.model.Usuario"%>
<%@page import="shirtworld.model.Produto"%>
<%@page import="shirtworld.repository.CarrinhoRepository"%>
<%@page import="shirtworld.model.Carrinho"%>
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

<div class="">
	<div class="row">
		<div class="col s4"></div>
		<div class="col s8">
			<h4 class="indigo darken-4 white-text" style="padding:1%;">Carrinho</h4>
		
			<table class="">
				<th>Nome do Produto</th>
				<th>Quantidade</th>
				<th>Detalhes</th>
					<th>Preço</th>
					
				<%
				Usuario  user = (Usuario)request.getSession().getAttribute("usuario");
				Carrinho carrinho = CarrinhoRepository.getFilteredCart(user);
				if(carrinho!=null){
				for(Produto produto : carrinho.getProdutos()){ %>	
				<tr>
					<td><%=produto.getNome() %></td>
					<td><%=produto.getQuantidade() %></td>
					<td><a class="btn black white-text"><i class="material-icons left">search</i> Ver</a></td>
					<td><%=produto.getPreco() %></td>
				</tr>
				<%} %>
				
				<tr>
					<td></td>
					<td></td>
					<td>TOTAL : </td>
					<td><%=carrinho.getPrecoTotal() %></td>
					
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><a href="#" class="btn indigo darken-4">Concluir</a></td>
				</tr>
				
			<%} %>
			
			</table>
			
	
	
	</div>
	
</div>
</div>

<jsp:include page="footer.jsp" />


</body>
</html>