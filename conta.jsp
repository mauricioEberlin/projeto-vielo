<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>
<%@include file="utils/utilidade.jsp"%>

<div class="main-conta">
        <div class="compras">           
            <h2>Suas compras</h2>
            <%
            String idUsuario = (String)session.getAttribute("idUsuario");
            String idsCompra = "";

            String sql = "SELECT * FROM compra WHERE id_usuario = "+idUsuario;
            ResultSet compras = stm.executeQuery(sql);

            if(compras.next()){
                compras.beforeFirst();
                while(compras.next()){
                    idsCompra += compras.getString("id_produto") + ",";        
                }
                idsCompra = idsCompra.substring(0, idsCompra.length() - 1);
                sql = "SELECT * FROM produto WHERE id IN ("+idsCompra+")";
                ResultSet produtos = stm.executeQuery(sql);
                
                while(produtos.next()){
                    out.print("<div class='compras-bloco'>");
                    out.print("<div class='compras-imagem'>");
                    out.print("<img src='assets/img/"+produtos.getString("imagem")+"'/>");
                    out.print("</div>");
                    out.print("<div class='compras-desc'>");
                    out.print("<span><p>"+produtos.getString("nome_produto")+"</p></span>");
                    out.print("<p>R$ "+produtos.getString("preco").replace(".", ",")+"</p>");
                    out.print("<p><a href='produto.jsp?id="+produtos.getString("id")+"'>Ver página do produto</a></p>");
                    out.print("</div>");
                    out.print("</div>");      
                }
            }else{
                out.print("<div class='compras-bloco'>");
                out.print("<div class='compras-desc'>");
                out.print("<span><p>Você ainda não realizou nenhuma compra!</p></span>");
                out.print("</div>");
                out.print("</div>");
            }           
            conexao.close();
	        stm.close();
            %>
        </div>

        <div class="main-dados">    
            <h2>Seus dados</h2>
            <form class="dados-form" name="conta" method="post" action="utils/usuario/atualizarUsuario.jsp" onkeyup="habilitarBtn()">
                <div class="dados-campos">
                    <p><input id="camponome" type="text" placeholder="nome" name="camponome" value="<%out.print((String)session.getAttribute("nomeUsuario"));%>"/></p>
                    <p><input id="campoemail" type="text" placeholder="endereço de e-mail" name="campoemail" value="<%out.print((String)session.getAttribute("emailUsuario"));%>" disabled/></p>
                    <p><input id="camposenha" type="password" placeholder="nova senha" name="camposenha"/></p>
                    <p><input id="campoconfsenha" type="password" placeholder="confirme a senha" name="campoconfsenha"/></p>
                    <p id="erroSenha" style="display: none;">As senhas não coincidem</p>
                    <button id="botaoAlterar" type="submit" disabled>Alterar dados</button>
                </div>
            </form>

        </div>
    </div>

    <script>
        function habilitarBtn() {
            let nome = document.getElementById("camponome").value;
            let email = document.getElementById("campoemail").value;
            let senha = document.getElementById("camposenha").value;
            let confSenha = document.getElementById("campoconfsenha").value;
            
            if(nome != "" && email != "" && senha != "" && confSenha != ""){               
                debugger;
                if(senha != confSenha){
                    document.getElementById("botaoAlterar").disabled = true;
                    document.getElementById("erroSenha").style.display = "block";
                }else{
                    document.getElementById("botaoAlterar").disabled = false;
                    document.getElementById("erroSenha").style.display = "none";
                }           
            }else{
                document.getElementById("botaoAlterar").disabled = true;
            }
        }
    </script>

<%@include file="layout/rodape.jsp"%>