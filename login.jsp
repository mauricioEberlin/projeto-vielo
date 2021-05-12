<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="assets/favicon.png">
    <link rel="stylesheet" href="assets/css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <script type="text/javascript" src="/public/js/log.js"></script>
    <title>Login</title>
</head>

<body>
    <div class="login-page">
        <div class="form">
            <form class="login-form" name="login" method="post" action="utils/usuario/autenticarUsuario.jsp">
                <input type="text" placeholder="e-mail" name="campoemail"/>
                <input type="password" placeholder="senha" name="camposenha"/>
                <button type="submit"> login </button>
                <p class="message">Não registrado? <a href="register.jsp">Cadastre-se</a></p>
            </form>
        </div>
    </div>
</body>

</html>