<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>

<%
Boolean erro = Boolean.parseBoolean(request.getParameter("erro"));

if(erro || erro == null){
    out.print("<h2 style='text-align: center; background-color: #F1EEEE; padding: 100px 0px'>Aconteceu algo de errado com a compra.</h2>");
}else{
    out.print("<h2 style='text-align: center; background-color: #F1EEEE; padding: 100px 0px'>Obrigado pela compra!</h2>");
}
%>

<%@include file="layout/rodape.jsp"%>