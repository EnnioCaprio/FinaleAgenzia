<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="login/css/style.css">
</head>
<body>
    <div class="container">
        <div class="title">
                <h1 class="title-menu">Gestionale Viaggi</h1>
            </div>
            <div class="sfondo">
                    <div class="sfondo-titolo">
                        <h1 class="sfondo-titolo-principale">Pagina Login Utente</h1>
                    </div>
            </div>
            <div class="container-form">
                <form action="loginCliente?y=2" method="post" class="form">

                    <h3 class="login">Registrazione utente</h3>
                    
                    <div class="form-label"><label class="form-input">Nome</label><input type="text"name="nome" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Cognome</label><input type="text"name="cognome" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Telefono</label><input type="text"name="telefono" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Username</label><input type="text"name="username" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Password</label><input type="text"name="password" class="input" autocomplete="off" required></div><br>
                    <input type ="submit" value = "CONFERMA" class="conferma">
                    
                </form>
            </div>
    </div>
</body>
</html>