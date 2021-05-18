<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>

<% 
    //Cria as variaveis contendo informacoes sobre o banco de dados
	String banco = "projeto";
	String usuario = "root";
	String senha = "";
	String endereco = "jdbc:mysql://localhost:3306/" + banco;
	
	String driver = "com.mysql.jdbc.Driver";

    //Carregar o Driver na memoria
	Class.forName(driver);
	
	// Cria a variavel para a conexao com o Banco de dados
	Connection conexao = DriverManager.getConnection(endereco, usuario, senha);
	
	//Cria o objeto Statement
	Statement stm = conexao.createStatement();
%>