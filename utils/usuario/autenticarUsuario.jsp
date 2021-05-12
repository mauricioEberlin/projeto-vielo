<%@include file = "../utilidade.jsp" %>

<%  
	//Cria as variaveis e armazena as informacoes do formulario
	String pagina = "";
	String nomeUsuario = "";
	Boolean isAutenticado = false;

	String campoemail = request.getParameter("campoemail");
	String camposenha = request.getParameter("camposenha");

	String sql = "SELECT * FROM usuario WHERE email='"+campoemail+"' AND senha='"+camposenha+"'";
	ResultSet resultSet = stm.executeQuery(sql);

    if(resultSet.next()){
		pagina = "../../index.jsp";
		nomeUsuario = resultSet.getString("nome");
		isAutenticado = true;

    }else{
		pagina = "../../login.jsp";
		isAutenticado = false;
    }

	conexao.close();
	stm.close();
%>

<html>
<head>
	<title></title>
</head>
<body>
	<form id="formulario" method="POST" action="<%out.print(pagina);%>">
    
        <input type="hidden" name="nomeUsuario" value="<%out.print(nomeUsuario);%>"/>
        <input type="hidden" name="isAutenticado" value="<%out.print(isAutenticado);%>"/>
    
    </form> 
</body>

<script>
    window.onload = function() {
        document.getElementById("formulario").submit();
    };
</script>
</html>