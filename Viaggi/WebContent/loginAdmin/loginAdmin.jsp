<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="loginAdmin/css/style.css">
</head>
<body>
    <div class="container">
        <div class="title">
                <h1 class="title-menu">Gestionale Viaggi</h1>
            </div>
            <div class="sfondo">
                    <div class="sfondo-titolo">
                        <h1 class="sfondo-titolo-principale">Pagina Login Admin</h1>
                    </div>
            </div>
            <% if(session.getAttribute("userAdmin") == null){ %>
            <div class="container-form">
                <form action="loginAdmin?y=1" method="post" class="form">

                    <h3 class="login">Log-in</h3>
                    
                    <div class="form-label"><label class="form-input">Username</label><input type="text"name="username" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Password</label><input type="password"name="password" class="input" autocomplete="off" required></div><br>
                    <input type ="submit" value = "CONFERMA" class="conferma">
                    
                </form>
            </div>
            <% }else{ %>
             	<h1 align="center">Hai già fatto l'accesso</h1>
            	<h2 align="center"><a href="loginAdmin?x=2">Account</a></h2>
            <% } %>
    </div>
</body>
</html>