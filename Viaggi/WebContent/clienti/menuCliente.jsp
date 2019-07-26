<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="clienti/css/style2.css">
</head>
<body>
		<div class="container">
				<div class="title">
					<h1 class="title-menu">Gestionale Viaggi</h1>
				</div>
				<div class="sfondo">
						<div class="sfondo-titolo">
							<h1 class="sfondo-titolo-principale">Login effettuato. Benvenuto <%= session.getAttribute("username")%></h1>
						</div>
				</div>
			<div class="lista">
				<ul class="menu-lista">
					<li class="menu-lista-link"><a href="menuCliente?x=1">Info personali cliente</a></li>
					<li class="menu-lista-link"><a href="menuCliente?x=2">Logout</a></li>
					<li class="menu-lista-link"><a href="menuCliente?x=3">Prenotazione Viaggi</a></li>
					<li class="menu-lista-link"><a href="menuCliente?x=4">Prenotazioni effettuate</a></li>
					<li class="menu-lista-link"><a href="menuCliente?x=5">Ricerca singola viaggi</a></li>
				</ul>
			</div>
	</div>
</body>
</html>