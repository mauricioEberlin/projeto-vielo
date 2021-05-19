<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "../utilidade.jsp" %>

<%  
    String pagina = "";
	String idUsuario = (String)session.getAttribute("idUsuario");
    String idProduto = request.getParameter("id_produto");
    int qntd_estoque = 0;

    String sql = "SELECT * FROM produto WHERE id = " + idProduto;
    ResultSet resultSet = stm.executeQuery(sql);
        
    if(resultSet.next()){
        qntd_estoque = Integer.parseInt(resultSet.getString("qntd_estoque"));
    }

    if(idProduto != "" && idUsuario != "" && qntd_estoque > 0){
        String sql2 = "INSERT INTO compra (id_usuario, id_produto) VALUES ("+idUsuario+", "+idProduto+")";
        stm.executeUpdate(sql2);

        String sql3 = "UPDATE produto SET qntd_estoque = qntd_estoque-1 WHERE id = "+idProduto;
        stm.executeUpdate(sql3);
        pagina = "../../compra_feita.jsp";
    }else{
        pagina = "../../compra_feita.jsp?erro=true";
    }

    conexao.close();
    stm.close();
	
    response.sendRedirect(pagina);
%>