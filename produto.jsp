<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>
<%@include file="utils/utilidade.jsp"%>

<%
        String id = request.getParameter("id");
        String nome_produto = "";
        String preco = "";
        String qntd_estoque = "";
        Boolean isExistente = false;

        if (id != "" && id != null){
            String sql = "SELECT * FROM produto WHERE id = " + id;
            ResultSet resultSet = stm.executeQuery(sql);       
            
            if(resultSet.next()){
                isExistente = true;
                nome_produto = resultSet.getString("nome_produto");
                preco = resultSet.getString("preco");
                qntd_estoque = resultSet.getString("qntd_estoque");
            }
        }
        conexao.close();
        stm.close();

        if(!isExistente){
            response.sendRedirect("lista_produtos.jsp");
        }

%>

<div class="produto-detalhado">
    <div class="bloco-produto">
        <div class="imagem-produto">
            <img src="assets/img/bolsa 2.png"/>
        </div>
        <div class="detalhes-produto">
            <div class="detalhes-titulo">
                <span><%out.print(qntd_estoque);%> disponíveis</span>
                <h2><%out.print(nome_produto);%></h2>
            </div>
            <div class="detalhes-descricao">
                <p class="detalhes-preco">R$ <%out.print(preco.replace(".", ","));%></p>
                <button class="detalhes-comprar">Comprar agora</button>
            </div>
        </div>
    </div>
</div>

<%@include file="layout/rodape.jsp"%>