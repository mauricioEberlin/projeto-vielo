<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>
<%@include file="utils/utilidade.jsp"%>

<%
        String id = request.getParameter("id");
        String nome_produto = "";
        String preco = "";
        String imagem = "boneca.png";
        int qntd_estoque = 0;
        Boolean isExistente = false;
        
        if (id != "" && id != null){
            String sql = "SELECT * FROM produto WHERE id = " + id;
            ResultSet resultSet = stm.executeQuery(sql);
            
            if(resultSet.next()){
                isExistente = true;
                nome_produto = resultSet.getString("nome_produto");
                preco = resultSet.getString("preco");
                imagem = resultSet.getString("imagem");
                qntd_estoque = Integer.parseInt(resultSet.getString("qntd_estoque"));
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
            <img src="assets/img/<%out.print(imagem);%>"/>
        </div>
        <div class="detalhes-produto">
            <div class="detalhes-titulo">
                <span><%out.print(qntd_estoque);%> disponíveis</span>
                <h2><%out.print(nome_produto);%></h2>
            </div>
            <div class="detalhes-descricao">
                <p class="detalhes-preco">R$ <%out.print(preco.replace(".", ","));%></p>
                <a href="utils/produto/finalizar_compra.jsp?id_produto=<%out.print(id);%>">
                <button class="detalhes-comprar" <%if(!isAutenticado || qntd_estoque <= 0){out.print("disabled");}%>>Comprar agora</button></a> 
                <%if(!isAutenticado){out.print("<p>Precisa estar logado</p>");}%>
                <%if(qntd_estoque <= 0){out.print("<p>Produto esgotado</p>");}%>
            </div>
        </div>
    </div>
</div>

<%@include file="layout/rodape.jsp"%>