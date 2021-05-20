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

	if(!stm.executeQuery("SHOW TABLES LIKE 'usuario'").next()){
		stm.executeUpdate("CREATE TABLE usuario(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(30), email VARCHAR(100), senha VARCHAR(30));");
	}

	if(!stm.executeQuery("SHOW TABLES LIKE 'produto'").next()){
		stm.executeUpdate("CREATE TABLE produto(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, nome_produto VARCHAR(50), preco DECIMAL(8,2), qntd_estoque INT UNSIGNED, imagem VARCHAR(20), tipo VARCHAR(20));");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Bolsa grande', 80.00, 0,'bolsa grande 2.png','bolsas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Bolsa grande', 100.00, 20,'bolsa grande.png','bolsas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Bolsa', 46.90, 70,'bolsa 1.png','bolsas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Bolsa', 44.90, 50,'bolsa.png','bolsas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Bolsa brilho', 50.00, 32,'bolsa brilho.png','bolsas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Bolsa bau', 40.00, 36,'bolsa bau.png','bolsas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Pochete', 29.90, 43,'carteiras.png','carteiras');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Carteira', 30.00, 58,'carteiras (3).png','carteiras');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Carteira', 40.00, 62,'carteiras (4).png','carteiras');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Guarda-chuva', 80.00, 30,'guarda-chuva.png','guarda-chuvas');");
		stm.executeUpdate("INSERT INTO produto(nome_produto, preco, qntd_estoque, imagem, tipo) VALUES ('Necessaires', 30.00, 60,'necessaires.png','necessaires');");
	}

	if(!stm.executeQuery("SHOW TABLES LIKE 'compra'").next()){
		stm.executeUpdate("CREATE TABLE compra(id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, id_usuario INT UNSIGNED, id_produto INT UNSIGNED);");
	}
%>