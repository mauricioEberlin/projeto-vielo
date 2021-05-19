<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "../utilidade.jsp" %>

<%
    String idUsuario = (String)session.getAttribute("idUsuario");
    stm.executeUpdate("DELETE FROM usuario WHERE id = "+idUsuario);
    stm.executeUpdate("DELETE FROM compra WHERE id_usuario = "+idUsuario);
    conexao.close();
    stm.close();
    response.sendRedirect("deslogarUsuario.jsp");
%>