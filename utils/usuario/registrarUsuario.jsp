<%@include file = "../utilidade.jsp" %>

<%  

	//Cria as variaveis e armazena as informacoes do formulario
    String camponome = request.getParameter("camponome");
	String campoemail = request.getParameter("campoemail");
	String camposenha = request.getParameter("camposenha");
	String sql = null;

	sql = "SELECT * FROM usuario WHERE email='"+campoemail+"'";
	ResultSet resultSet = stm.executeQuery(sql);

	if (camponome == "" || campoemail  == "" || camposenha == ""){
		response.sendRedirect("../../register.jsp");
	}else if (resultSet.next()){
		response.sendRedirect("../../register.jsp");
	}else{
		sql = "INSERT INTO usuario (nome, email, senha) VALUES('"+camponome+"','"+campoemail+"','"+camposenha+"')";
		stm.executeUpdate(sql);

		response.sendRedirect("../../login.jsp");
	}

	conexao.close();
	stm.close();

%>

