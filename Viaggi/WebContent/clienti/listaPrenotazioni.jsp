<%@page import="java.util.ArrayList"%>
<%@page import="model.Viaggi"%>
<%@page import="model.Prenotazioni"%>
<%@page import="java.util.List"%>
<%@page import="model.Dao.CrudPrenotazioni"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
<% 
	CrudPrenotazioni cr = new CrudPrenotazioni();
	Prenotazioni p = new Prenotazioni();
	Viaggi v = new Viaggi();
	ArrayList<Prenotazioni> lista = cr.listaPrenotazioni();
%>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="clienti/css/style7.css">
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
		<tr align="center" border="1">
			<td>ID PRENOTAZIONE</td>
			<td>DESTINAZIONE</td>
			<td>DATA INIZIO</td>
			<td>DATA FINE</td>
			<td>PREZZO</td>
			<td>QUANTITA PERSONE</td>
		</tr>
		<% for(Prenotazioni l : lista){ %>
		<tr>
			<td><%= l.getIdPrenotazioni() %></td>
			<td><%= l.getViaggi().getDestinazione() %></td>
			<td><%= l.getViaggi().getDataininzio() %></td>
			<td><%= l.getViaggi().getDatafine() %></td>
			<td><%= l.getPrezzototale() %></td>
			<td><%= l.getQuantitapersone() %></td>
		</tr>
		<% } %>
    </table>
    <div class="container-form"> 
	<form action="menuCliente?y=3"method= "post" class="form">
	<div><label>id prenotazione</label><input type="text" name ="idprenotazione" list ="list"></div>
	<datalist id="list" >
	<% for(Prenotazioni l : lista){ %>
	<option><%= l.getIdPrenotazioni() %></option>
	<% } %>
	</datalist>
	<input type="submit" value="ELIMINA PRENOTAZIONE" class="conferma">
    </form>
    </div>
</div>
</body>
</html>