<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gerenciador de Espaços</title>

<link href="/geu/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/geu/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="/geu/css/app.css" rel="stylesheet">


</head>

<body>
	<c:import url="topo.jsp"></c:import>
	<div class="container">
		<div class="page-header">
			<h1>Inserir Reserva</h1>
		</div>
		<form action="reservas" method="post">

			<div class="form-group">
				<label for="espaco">Espaço: </label>
				<select id="espaco"   name="espaco" class="form-control">
				<option value="" selected>Selecione</option>
				<c:forEach var="espaco" items="${lista}">
					<option value="${espaco.id}">${espaco.identificacao}</option>
				</c:forEach> </select>
			</div>


			<div class="form-group">
				<label for="titulo">Titulo: </label> 
				<input class="form-control"
					id="titulo" name="titulo" type="text" required>

			</div>

			<div class="form-group">
				<label for="descricao">Descrição: </label> 
				<input class="form-control"
					id="descricao" name="descricao" type="text" required>

			</div>

			<div class="form-group">
				<label for="justificativa">Justificativa: </label> 
				<input class="form-control"
					id="justificativa" name="justificativa" type="text" required>

			</div>

			<div class="form-group">
				<label for="solicitante">Solicitante: </label> 
				<input class="form-control"
					id="solicitante" name="solicitante" type="text" required>

			</div>

			<div class="form-group">
				<label for="telefone">Telefone: </label> 
				<input class="form-control"
					id="telefone" name="telefone" type="text" required>

			</div>


			<div class="form-group">
				<label for="data">Data (dd/MM/yyyy): </label> 
				<input class="form-control" id="data" name="data" type="text" required>
			</div>

			<div class="form-group">
				<label for="inicio">Inicio (Hora HH:MM): </label> 
				<input class="form-control" id="inicio" name="inicio" type="text" required>
			</div>

			<div class="form-group">
				<label for="fim">Fim (Hora HH:MM):</label> 
				<input class="form-control" id="fim" name="fim" type="text" required>
			</div>


			<input	class="btn btn-primary" type="submit" value="Salvar" />
		</form>
	</div>
<BR>
	<c:import url="rodape.jsp"></c:import>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="/geu/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>