<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>
<%@include file="utils/utilidade.jsp"%>

<div class="lista-produtos">
<div class="sidebar">

    <ul>
        <li><a href="lista_produtos.jsp?tipo=bolsas">Bolsas</a></li>
        <li><a href="lista_produtos.jsp?tipo=carteiras">Carteiras</a></li>
        <li><a href="lista_produtos.jsp?tipo=necessaires">Necessaires</a></li>
        <li><a href="lista_produtos.jsp?tipo=guarda-chuvas">Guarda-chuvas</a></li>
    </ul>

</div>

<div class="produtos">  
    <%

        String sql = "SELECT * FROM produto";
        String tipo = request.getParameter("tipo");
        String busca = request.getParameter("busca");
        if(tipo != null && tipo != ""){
            sql = "SELECT * FROM produto WHERE tipo = '"+tipo+"'";
        }
        if(busca != null && busca != ""){
            sql = "SELECT * FROM produto WHERE nome_produto LIKE '%"+busca+"%'";
        }

        ResultSet resultSet = stm.executeQuery(sql);

        while(resultSet.next()){
            out.print("<div class='card-produto'>");
            out.print("<a href='produto.jsp?id="+resultSet.getString("id")+"'>");
            out.print("<div>");
            out.print("<img class='img-card' src='assets/img/"+resultSet.getString("imagem")+"' alt="+resultSet.getString("nome_produto")+">");
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
</div>

<%@include file="layout/rodape.jsp"%>