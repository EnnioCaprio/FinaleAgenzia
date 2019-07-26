<%@page import="model.Clienti"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dao.CrudAmministratore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
<% 
CrudAmministratore cc = new CrudAmministratore();
Clienti c = new Clienti();
ArrayList<Clienti> lista = cc.leggiUtenti(c);
%>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="admin/css/style4.css">
    </head>
<title>Insert title here</title>
</head>
<body>
        <div class="container">
                <div class="title">
                    <h1 class="title-menu">Gestionale Viaggi</h1>
                </div>
                <div class="sfondo">
                        <div class="sfondo-titolo">
                            <h1 class="sfondo-titolo-principale">Lista Prenotazioni</h1>
                        </div>
                </div>
	<table class="table" border="1" cellpadding="10" align="center">
		<tr align="center">
			<td>ID CLIENTE</td>
			<td>USERNAME</td>
			<%
				for(Clienti l : lista){
			%>
		</tr>
		<tr align="center">
			<td><%=l.getIdCliente()%></td>
			<td><%=l.getUsername()%></td>
		</tr>
		<%
			}
		%>
		</border>
	</table>
    <div class="container-form"> 
	<form method="post" action="MenuAdmin?y=1" class="form">
		<input type ="text" name="idcliente" list="list">
		<datalist id="list"> 
		<% for(Clienti l : lista){ %>
			<option><%= l.getIdCliente() %></option>
		<% } %>
		</datalist>	
		<input type="submit" value="elimina" class="conferma">	
	</form>
    </div>
</div>
</body>
</html>