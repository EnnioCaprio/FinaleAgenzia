<%@page import="model.Viaggi"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<%@page import="model.Dao.CrudViaggi"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="clienti/css/style6.css">
</head>
<body>
	<%
		CrudViaggi cv = new CrudViaggi();
		Viaggi v = new Viaggi();
		ArrayList<Viaggi> lista = cv.listaViaggi(v);
	%>
	
	
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
		<tr>
			<td>ID VIAGGIO</td>
			<td>DESTINAZIONE</td>
			<td>PREZZO</td>
			<td>DISPONIBILITA'</td>
			<td>DATA INIZIO</td>
			<td>DATA FINE</td>
			<td>QUANTITA'</td>
		</tr>
		<%
			for(Viaggi l : lista) {
		%>

		<tr align="center">
			<td><%=l.getIdViaggio()%></td>
			<td><%=l.getDestinazione()%></td>
			<td><%=l.getPrezzo()%></td>
			<td><%=l.getDisponibilita()%></td>
			<td><%=l.getDataininzio()%></td>
			<td><%=l.getDatafine()%></td>
			<td><%=l.getQuantità()%></td>
		</tr>
		<%
			}
		%>
		</border>
	</table>
	<br>
	<div class="container-form"> 
	<form method="post" action="menuAdmin?y=2" class="form">
		<input type="text" name="idviaggio" list="list">
		<datalist id="list">
			<%
				for(Viaggi l : lista) {
			%>
			<option><%=l.getIdViaggio()%></option>
			<%
				}
			%>
		</datalist>
		<input type="submit" value="elimina" class="conferma">
	</form>
	</div>
	<hr>
	<div class="container-form"> 
	<form method="post" action="menuAdmin?y=3" class="form">

		<input type="text" name="idviaggio" list="list2">
		<datalist id="list2">
			<%
				for(Viaggi l : lista) {
			%>
			<option><%= l.getIdViaggio()%></option>
			<%
				}
			%>
		</datalist>
		<input type="text" name="quantità">
		<br>
		<input type="submit" value="aggiungi" class="conferma">
	</form>
	</div>
</div>
</body>
</html>