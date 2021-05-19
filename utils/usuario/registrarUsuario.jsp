<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "../utilidade.jsp" %>

<%  

	//Cria as variaveis e armazena as informacoes do formulario
    String pagina = "../../register.jsp";
	String camponome = request.getParameter("camponome");
	String campoemail = request.getParameter("campoemail");
	String camposenha = request.getParameter("camposenha");
	String sql = null;

	sql = "SELECT * FROM usuario WHERE email='"+campoemail+"'";
	ResultSet resultSet = stm.executeQuery(sql);

	if (camponome == "" || campoemail  == "" || camposenha == ""){
		pagina = "../../register.jsp?vazio=true&camponome="+camponome+"&campoemail="+campoemail;
	}else if (resultSet.next()){
		pagina = "../../register.jsp?existente=true";
	}else{
		pagina = "../../login.jsp";
		sql = "INSERT INTO usuario (nome, email, senha) VALUES('"+camponome+"','"+campoemail+"','"+camposenha+"')";
		stm.executeUpdate(sql);
	}
	
	conexao.close();
	stm.close();

	response.sendRedirect(pagina);
%>

