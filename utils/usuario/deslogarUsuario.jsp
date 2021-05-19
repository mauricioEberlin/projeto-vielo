<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "../utilidade.jsp" %>

<%
    session.setAttribute("idUsuario", null);
    session.setAttribute("nomeUsuario", null);
    session.setAttribute("emailUsuario", null);
    session.setAttribute("isAutenticado", false);
    response.sendRedirect("../../index.jsp");
%>