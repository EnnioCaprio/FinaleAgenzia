<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="clienti/css/style.css">
</head>
<body>
 <div class="container">
            <div class="title">
                <h1 class="title-menu">Gestionale Viaggi</h1>
            </div>
            <div class="sfondo">
                    <div class="sfondo-titolo">
                        <h1 class="sfondo-titolo-principale">Pagina Logout</h1>
                    </div>
            </div>
            <div class="container-logout">
                <% session.invalidate(); %>
                <a href="index.jsp" class="indietro">Torna alla homepage</a>
            </div>
    </div>
</body>
</html>