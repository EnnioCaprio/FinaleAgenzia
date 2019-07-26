<%@page import="model.Clienti"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dao.CrudAmministratore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="clienti/css/style3.css">
</head>
</head>
<body>
<%
	CrudAmministratore ca = new CrudAmministratore();
	Clienti c = new Clienti();
	
%>

<div class="container">
        <div class="title">
            <h1 class="title-menu">Gestionale Viaggi</h1>
        </div>
        <div class="sfondo">
                <div class="sfondo-titolo">
                    <h1 class="sfondo-titolo-principale">Benvenuto nella tua pagina personale</h1>
                </div>
        </div>
        <table class="table" border="1" cellpadding="10" align="center">
            <tr>
                <td align="center">Id:</td>
                <td align="center">Nome:</td>
                <td align="center">Cognome:</td>
                <td align="center">Telefono:</td>
                <td align="center">Username:</td>
            </tr>
            <tr>
                <td><%= session.getAttribute("idCliente") %></td>
                <td><%= session.getAttribute("nomeCliente") %></td>
                <td><%= session.getAttribute("cognomeCliente") %></td>
                <td><%= session.getAttribute("telefono") %></td>
                <td><%= session.getAttribute("username") %></td>
            </tr>
	    </table>
        <div class="container-form">
            <form action="menuCliente?y=1" method="post" class="form">

                <h3 class="login">Log-in</h3>

                <div class="form-label"><label>Id:</label><input type="text" name="idCliente" class="input" value="<%= session.getAttribute("idCliente") %>"></div><br>
                <div class="form-label"><label>Nome:</label><input type="text" name="nomeCliente" class="input" value="<%= session.getAttribute("nomeCliente") %>"></div><br>
                <div class="form-label"><label>Cognome:</label><input type="text" name="cognomeCliente" class="input" value="<%= session.getAttribute("cognomeCliente") %>"></div><br>
                <div class="form-label"><label>Telefono:</label><input type="text" name="telefono" class="input" value="<%= session.getAttribute("telefono") %>"></div><br>
                <div class="form-label"><label>Username:</label><input type="text" name="username" class="input" value="<%= session.getAttribute("username") %>"></div><br>
                <div class="form-label"><label>Password:</label><input type="text" name="password" class="input" value="<%= session.getAttribute("password") %>"></div><br>
                <input type="submit" value="modifica" class="modifica">
            </form>
        </div>
       
</div>
</body>
</html>