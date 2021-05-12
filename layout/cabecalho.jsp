<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String nomeUsuario = request.getParameter("nomeUsuario");
Boolean isAutenticado = Boolean.parseBoolean(request.getParameter("isAutenticado"));
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="assets/favicon.png">
    <link rel="stylesheet" href="assets/css/estilo.css">
    <title>Vielô</title>
</head>

<body>

    <header>
        <div class="icone-principal">
            <img src="assets/img/boneca.png" width="100" alt="Logotipo de uma boneca Vielô" />
            <h1>Vielô</h1>
        </div>
    </header>
    <nav>
        <div class="cabecalho">
            <ul class="esquerda">
                
                <%
                
                if(nomeUsuario == "" || nomeUsuario == null){
                    out.print("<li><a href='#'>ENTRE</a></li><li><a href='#'>CADASTRE-SE</a></li>");
                }else{
                     out.print("<li><a href='#'>Bem vindo(a), "+ nomeUsuario +"!</a></li>");
                }
                
                %>
                
            </ul>

            <ul class="meio">
                <li><a href="#">BOLSAS</a></li>
                <li><a href="#">ACESSÓRIOS</a>
                    <ul>
                        <li><a href="#">CARTEIRAS</a></li>
                        <li><a href="#">NECESSAIRES</a></li>
                        <li><a href="#">GUARDA-CHUVAS</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="direita">
                <li><input type="text"></li>
            </ul>
        </div>
    </nav>