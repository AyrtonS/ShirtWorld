<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<script src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	var chip = {
		tag : 'chip content',
		image : '', //optional
		id : 1, //optional
	};
	$(document).ready(function() {

		$('.chips').material_chip();
		$('.chips-initial').material_chip({
			data : [ {
				tag : 'Apple',
			}, {
				tag : 'Microsoft',
			}, {
				tag : 'Google',
			} ],
		});
		$('.chips-placeholder').material_chip({
			placeholder : 'Enter a tag',
			secondaryPlaceholder : '+Tag',
		});
		$('.chips-autocomplete').material_chip({
			autocompleteOptions : {
				data : {
					'Apple' : "hello",
					'Microsoft' : "Hello",
					'Google' : null
				},
				limit : Infinity,
				minLength : 1
			}
		});

		$('.chips').on('chip.add', function(e, chip) {
			// you have the added chip here
		});

		$('.chips').on('chip.delete', function(e, chip) {
			// you have the deleted chip here
		});

		$('.chips').on('chip.select', function(e, chip) {
			// you have the selected chip here
		});
		$('.chips-initial').material_chip('data');

	});
</script>







</head>




<body>


	<jsp:include page="top_menu.jsp" />








	<div class="container">
		<h3>Customize seu produto e deixe-o sob medida</h3>
		<br>

		<form class="col s12 l12" method="get" action="index.jsp">
			<div class="row">

				<div class="input-field col s12">
					<h6>Selecione o(s) produto(s):</h6>
					<%
						List<String> list = new ArrayList<>();
						list.add("Camisa");
						list.add("Copo");
						list.add("Boné");
						list.add("Caneta");
						Collections.sort(list);
						int id = 1;
					%>
					<%
						for (String name : list) {
					%>
					<p>
						<input type="checkbox" id="test<%=id%>"> <label
							for="test<%=id%>"><%=name%></label>
					</p>
					<%
						id++;
						}
					%>
				</div>
			</div>



			<div class="row">
				<div class="input-field col s3">
					<input id="quantidade" type="number" class="validate" required>
					<label for="quantidade">Quantidade</label>
				</div>
				<div class="input-field col s3">
					<select id="quantidade" class="validate" required>
						<option>Selectione o Tamanho</option>
						<option>PP</option>
						<option>P</option>
						<option>M</option>
						<option>G</option>
						<option>GG</option>
						<option>UGG</option>
					</select> <label for="quantidade">Tamanho</label>
				</div>

				<div class="input-field col s3">
					<select id="tecido" class="validate" required>
						<option>Selectione o Tecido</option>
						<option>Linho</option>
						<option>Algodão</option>
						<option>Seda</option>
						<option>Jeans</option>
						<option>Não faço a menor idéia</option>
					</select> <label for="tecido">Tecido</label>
				</div>
				<div class="input-field col s3">
					<select id="genero" class="validate" multiple required>
						<option>Selectione o Sexo</option>
						<option>Masculino</option>
						<option>Feminino</option>
						<option>Masculino Infantil</option>
						<option>Feminino Infantil</option>
						<option>Não faço a menor idéia</option>
					</select> <label for="genero">Gênero</label>
				</div>

			</div>
			<div class="row">
				<div class="input-field col s3">
					<input id="med_braco" type="number" class="validate" required>
					<label for="med_braco">Circunferencia do Braço em (cm)</label>
				</div>
				<div class="input-field col s3">
					<input id="med_cint" type="number" class="validate" required>
					<label for="med_cint">Circunferencia da Cintura em (cm)</label>
				</div>
				<div class="input-field col s3">
					<input id="med_peito" type="number" class="validate" required>
					<label for="med_peito">Circunferencia do Peito em (cm)</label>
				</div>
				<div class="input-field col s3">
					<input id="med_pesc" type="number" class="validate" required>
					<label for="med_pesc">Circunferencia do Pescoço em (cm)</label>
				</div>
			</div>



			<div class="row">
				<div class="input-field col s12">
					<form action="#">
						<div class="file-field input-field">
							<div class="btn indigo darken-4">
								<span><i class="material-icons left">add</i>Selecione imagens</span> <input type="file" multiple>
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text"
									placeholder="Faça o upload de imagens">
							</div>
						</div>
					</form>
				</div>
			</div>


			<div class="row">
				<div class="input-field col s12">
					<textarea id="detalhes" class="materialize-textarea" required></textarea>
					<label for="detalhes">Detalhes do produto</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<input type="text" id="name" required>
					</textarea>
					<label for="name">Informe seu nome</label>
				</div>
				<div class="input-field col s6">
					<input type="email" id="email" required>
					</textarea>
					<label for="email">Informe seu E-mail. EX: (88) 997267262</label>
				</div>
			</div>
			<div class="row">
				<div class="col s12">

					<div class="input-field inline right">
						<button type="submit" class="btn btn-info indigo darken-4 right-align">
							<i class="material-icons left">send</i>Solicitar Orçamento
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>





	<jsp:include page="footer.jsp" />

</body>
</html>