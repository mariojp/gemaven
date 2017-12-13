<%@ taglib tagdir="/WEB-INF/tags" prefix="u"%>
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
			<h1>Inserir Espaços</h1>
		</div>

		<form action="espacos" method="post">
			<div class="form-group">
				<label for="identificacao">Identificação: </label> <input
					class="form-control" id="identificacao" name="identificacao"
					type="text" required>
			</div>
			<div class="form-group">
				<label for="andar">Andar: </label> <input class="form-control"
					id="andar" name="andar" type="text" required>

			</div>
			<div class="form-group">
				<label for="bloco">Bloco: </label> <select class="form-control"
					id="bloco" name="bloco">
					<option value="" selected>Selecione</option>
					<c:forEach var="bloco" items="${lista}">
						<option value="${bloco.id}">${bloco.letra}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label for="tipo">Tipo: </label> <select class="form-control"
					id="tipo" name="tipo">
					<option value="" selected>Selecione</option>
					<c:forEach var="tipo" items="${listaTipo}">
						<option value="${tipo.id}">${tipo.nome}</option>
					</c:forEach>
				</select>
			</div>
			<button class="btn btn-primary"  type="submit">Salvar</button>
		</form>
		<br>


	</div>

	<c:import url="rodape.jsp"></c:import>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="/geu/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>