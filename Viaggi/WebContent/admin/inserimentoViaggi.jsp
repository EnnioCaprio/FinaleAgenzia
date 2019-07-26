<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="/errore.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="admin/css/style3.css">
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
                <form action="menuAdmin?y=1" method="post" class="form">

                    <h3 class="login">Registrazione utente</h3>
                    
                    <div class="form-label"><label class="form-input">Destinazione</label><input type="text"name="destinazione" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Prezzo</label><input type="text"name="prezzo" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Data Inizio</label><input type="date"name="datainizio" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Data Fine</label><input type="date"name="datafine" class="input" autocomplete="off" required></div><br>
                    <div class="form-label"><label class="form-input">Quantità</label><input type="text"name="quantità" class="input" autocomplete="off" required></div><br>
                    <input type ="submit" value = "CONFERMA" class="conferma">
                    
                </form>
            </div>
    </div>
</body>
</html>