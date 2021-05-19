<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "../utilidade.jsp" %>

<%
	//Cria as variaveis e armazena as informacoes do formulario
	String pagina = "../../conta.jsp";

	String camponome = request.getParameter("camponome");
    String camposenha = request.getParameter("camposenha");

	String sql = "UPDATE usuario SET nome='"+camponome+"',senha='"+camposenha+"' WHERE id="+session.getAttribute("idUsuario");
    stm.executeUpdate(sql);
    session.setAttribute("nomeUsuario", camponome);
	conexao.close();
	stm.close();
	
	response.sendRedirect(pagina);
%>