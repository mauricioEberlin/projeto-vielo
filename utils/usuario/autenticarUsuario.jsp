<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "../utilidade.jsp" %>

<%
	//Cria as variaveis e armazena as informacoes do formulario
	String pagina = "";

	String campoemail = request.getParameter("campoemail");
	String camposenha = request.getParameter("camposenha");

	String sql = "SELECT * FROM usuario WHERE email='"+campoemail+"' AND senha='"+camposenha+"'";
	ResultSet resultSet = stm.executeQuery(sql);

    if(resultSet.next()){
		pagina = "../../index.jsp";
		session.setAttribute("nomeUsuario", resultSet.getString("nome"));
		session.setAttribute("isAutenticado", true);
    }else{
		pagina = "../../login.jsp";
    }

	conexao.close();
	stm.close();
	
	response.sendRedirect(pagina);
%>