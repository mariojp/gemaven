<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gerenciador de Espa�os</title>

<link href="/geu/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/geu/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="/geu/css/app.css" rel="stylesheet">


</head>

<body>
	<div class="container">
		<div class="page-header">
			<h1>Tela de Login</h1>
		</div>
		<form action="login" method="post">
		
		<div class="form-group">
				<label for="login">Usuario: </label> 
				<input class="form-control"
					id="login" name="login" type="text" required>

			</div>
			
			<div class="form-group">
				<label for="senha">Senha: </label> 
				<input class="form-control"
					id="senha" name="senha" type="password" required>

			</div>
			<input class="btn btn-primary"  type="submit" value="Salvar" />

		</form>
	</div>
<BR>
	<c:import url="rodape.jsp"></c:import>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="/geu/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>