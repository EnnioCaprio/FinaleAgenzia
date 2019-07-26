<%@page import="model.Clienti"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dao.CrudAmministratore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="admin/css/style5.css">
</head>
<body>
<% CrudAmministratore cr = new CrudAmministratore();
Clienti c = new Clienti(); 
ArrayList<Clienti> listaUtenti = cr.leggiUtenti(c);
%>

<div class="container">
        <div class="title">
            <h1 class="title-menu">Gestionale Viaggi</h1>
        </div>
        <div class="sfondo">
                <div class="sfondo-titolo">
                    <h1 class="sfondo-titolo-principale">Ricerca Viaggi</h1>
                </div>
        </div>

<div class="container-form">
	<form method="post" action="menuAdmin?y=5" class="form">
	<input type ="text" name="idCliente" list="list">
			<datalist id="list"> 
			<% for(Clienti l : listaUtenti){ %>
				<option><%= l.getIdCliente() %></option>
			<% } %>
			</datalist>	
			<input type="submit" value="ricerca">
	</form>
</div>
</div>
</body>
</html>