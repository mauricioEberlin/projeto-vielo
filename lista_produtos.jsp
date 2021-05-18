<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>
<%@include file="utils/utilidade.jsp"%>

<div class="sidebar">

    <ul>
        <li><a href="#">Bolsas (3)</a></li>
        <li><a href="#">Carteiras (2)</a></li>
    </ul>

</div>

<div class="produtos">  
    <%
        String sql = "SELECT * FROM produto";
        ResultSet resultSet = stm.executeQuery(sql);

        while(resultSet.next()){
            out.print("<div class='card-produto'>");
            out.print("<a href='produto.jsp?id="+resultSet.getString("id")+"'>");
            out.print("<div>");
            out.print("<img class='img-card' src='assets/img/bolsa 2.png' alt="+resultSet.getString("nome_produto")+">");
            out.print("</div>");
            out.print("<div class='desc'>");
            out.print("<span class='preco'>R$ "+resultSet.getString("preco").replace(".", ",")+"</span>");
            out.print("<p>"+resultSet.getString("nome_produto")+"</p>");
            out.print("<p>Disponíveis: <b>"+resultSet.getString("qntd_estoque")+"</b></p>");
            out.print("</div>");
            out.print("<div class='carrinho'>");
            out.print("<img src='assets/img/icons/carrinho.png'>");
            out.print("</div>");
            out.print("</a>");
            out.print("</div>");
        }

        conexao.close();
        stm.close();
    %>
</div>

<%@include file="layout/rodape.jsp"%>