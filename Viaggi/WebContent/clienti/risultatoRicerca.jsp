<%@page import="model.Viaggi"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Clienti"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="clienti/css/style5.css">
</head>
<body>
<%
	Viaggi v = (Viaggi) request.getAttribute("v1");
%>
<div class="container">
        <div class="title">
            <h1 class="title-menu">Gestionale Viaggi</h1>
        </div>
        <div class="sfondo">
                <div class="sfondo-titolo">
                    <h1 class="sfondo-titolo-principale">Risultato Ricerca</h1>
                </div>
        </div>
        <table class="table" border="1" cellpadding="10" align="center">
                <tr>
                    <td align="center">ID VIAGGI</td>
                    <td align="center">DESTINAZIONE</td>
                    <td align="center">PREZZO</td>
                    <td align="center">DISPONIBILITA'</td>
                    <td align="center">DATA INIZIO</td>
                    <td align="center">DATA FINE</td>
                </tr>
                
                <tr align="center">
                    <td><%= v.getIdViaggio() %></td>
                    <td><%= v.getDestinazione() %></td>
                    <td><%= v.getPrezzo() %></td>
                    <td><%= v.getDisponibilita() %></td>
                    <td><%= v.getDataininzio() %></td>
                    <td><%= v.getDatafine() %></td>
                </tr>
    </table>           
</div>
</body>
</html>