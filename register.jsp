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
    <title>Cadastre-se</title>
</head>

<body>
    <div class="login-page">
        <div class="form">
            <form class="register-form" name="registrar" method="post" action="utils/usuario/registrarUsuario.jsp">
                <input type="text" placeholder="nome" name="camponome"/>
                <input type="password" placeholder="senha" name="camposenha"/>
                <input type="text" placeholder="endereço de e-mail" name="campoemail"/>
                <button type="submit"> criar </button>
                <p class="message">Já possui uma conta? <a href="login.jsp">Login</a></p>
            </form>
        </div>
    </div>
</body>

</html>