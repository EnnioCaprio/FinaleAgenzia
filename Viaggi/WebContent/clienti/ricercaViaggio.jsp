<%@page import="model.Viaggi"%>
<%@page import="model.Dao.CrudViaggi"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="clienti/css/style4.css">
</head>
<body>
<% 	CrudViaggi cv = new CrudViaggi();
Viaggi v = new Viaggi(); 
ArrayList<Viaggi> listaViaggi = (ArrayList) cv.listaViaggi(v);
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
        <form method="post" action="menuCliente?y=4" class="form">
        <h1 class="title-form">Scegli il viaggio da ricercare</h1>
            <input type ="text" name="idViaggi" list="list" class="input" autocomplete="off"><br>
                <datalist id="list"> 
                <% for(Viaggi l : listaViaggi){ %>
                    <option><%= l.getIdViaggio() %></option>
                <% } %>
                </datalist>	
            <input type="submit" value="ricerca" class="ricerca">
        </form>
        </div>
</div>
</body>
</html>