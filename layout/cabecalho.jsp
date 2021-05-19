<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String nomeUsuario = (String)session.getAttribute("nomeUsuario");
Boolean isAutenticado = (Boolean)session.getAttribute("isAutenticado");
if(isAutenticado == null){
    isAutenticado = false;
}
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
            <a class="sem-decor" href="index.jsp">
                <img src="assets/img/boneca.png" width="100" alt="Logotipo de uma boneca Vielô" />
                <h1>Vielô</h1>
            </a>
        </div>
    </header>
    <nav>
        <div class="cabecalho">
            <ul class="esquerda">             
                <%               
                if(nomeUsuario == "" || nomeUsuario == null){
                    out.print("<li><a href='login.jsp'>ENTRE</a></li><li><a href='register.jsp'>CADASTRE-SE</a></li>");
                }else{
                    out.print("<li><a href='utils/usuario/deslogarUsuario.jsp'>SAIR</a></li><li><a href='conta.jsp'>Bem vindo(a), "+ nomeUsuario +"!</a></li>");
                }               
                %>               
            </ul>

            <ul class="meio">
                <li><a href="lista_produtos.jsp">TODOS OS PRODUTOS</a></li>
                <li><a href="lista_produtos.jsp">CATEGORIAS</a>
                    <ul>
                        <li><a href="lista_produtos.jsp?tipo=bolsas">BOLSAS</a></li>
                        <li><a href="lista_produtos.jsp?tipo=carteiras">CARTEIRAS</a></li>
                        <li><a href="lista_produtos.jsp?tipo=necessaires">NECESSAIRES</a></li>
                        <li><a href="lista_produtos.jsp?tipo=guarda-chuvas">GUARDA-CHUVAS</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="direita">
                <form name="busca" method="get" action="lista_produtos.jsp">
                    <li><input type="text" name="busca" placeholder="campo de busca"><button type="submit">Buscar</button></li>
                </form>
            </ul>
        </div>
    </nav>