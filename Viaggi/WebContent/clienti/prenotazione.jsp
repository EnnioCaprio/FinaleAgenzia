<%@page import="model.Viaggi"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="model.Dao.CrudPrenotazioni"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="model.Dao.CrudViaggi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="clienti/css/style6.css">
</head>
<body>

    <div class="container">
                <div class="title">
                    <h1 class="title-menu">Gestionale Viaggi</h1>
                </div>
                <div class="sfondo">
                        <div class="sfondo-titolo">
                            <h1 class="sfondo-titolo-principale">Prenotazione</h1>
                        </div>
                </div>

            <h1 align="center">Pagina Prenotazioni</h1>

            <%
                CrudViaggi cv = new CrudViaggi();
                Viaggi v = new Viaggi();
                ArrayList<Viaggi> lista = cv.listaViaggi(v);
            %>

            <table class="table" border="1" cellpadding="10" align="center">
                <tr>
                    <td>Id</td>
                    <td>Destinazione</td>
                    <td>Prezzo</td>
                    <td>Disponibilità</td>
                    <td>Data inizio</td>
                    <td>Data fine</td>
                    <td>Quantità</td>
                </tr>
                <%
                    
                    for (Viaggi l : lista) {
                       
                %>
                <tr>
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
            </table>
            <div class="container-form">
            <form action="menuCliente?y=2" method="post" class="form">
                <label>Destinazione</label><input type="text" name="idViaggio"
                    list="list" autocomplete="off" class="input" required>
                <datalist id="list">
                    <%
                        for (Viaggi l : lista) {
                            if (l.getDisponibilita() == 1) {
                    %>
                    <option><%=l.getIdViaggio()%></option>
                    <%
                        }
                        }
                    %>
                </datalist>
                <div><label>Quantita persone</label><input type="number" name="quantitapersone" min="1" max="10" class="input" required></div><br>
                <input type="submit" value="conferma" class="conferma">
            </form>
        </div>
    </div>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
