<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
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
	<c:import url="topo.jsp"></c:import>
	<div class="container">
		<div class="page-header">
			<h1>
				<img alt="" src="/geu/img/logo-nova-ucsal.png" /> GEU
			</h1>
		</div>
		<p class="lead">A Universidade Cat�lica do Salvador (UCSal) possui
			uma estrutura f�sica de com diversos espa�os dispon�veis aos alunos,
			desde laborat�rios de Inform�tica at� audit�rios. E o gerenciamento
			desses espa�os fica comprometido pela distribui��o das atividades de
			reserva e solicita��o, principalmente devido � dificuldade de
			comunica��o entre os administradores de turnos diferentes e �reas
			diferentes. � not�ria a necessidade de um sistema para auxiliar no
			gerenciamento dessas tarefas.</p>
	</div>

	<c:import url="rodape.jsp"></c:import>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="/geu/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>