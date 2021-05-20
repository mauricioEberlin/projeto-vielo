<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="layout/cabecalho.jsp"%>

<section id="categorias">

    <div class="imagens categoria">
    
        <figure>
            <a href="lista_produtos.jsp?tipo=bolsas">
                <button class="bolsas_but">
            <img src="assets/img/bolsas.png" alt="Bolsas">
            <figcaption>BOLSAS</figcaption>
                </button>
            </a>
        </figure>

        <figure>
            <a href="lista_produtos.jsp?tipo=carteiras">
                <button class="carteiras_but">
            <img src="assets/img/carteiras.png" alt="Carteiras">
            <figcaption>CARTEIRAS</figcaption>
                </button>
            </a>
        </figure>

        <figure>
            <a href="lista_produtos.jsp?tipo=necessaires">
                <button class="necessaires_but">
            <img src="assets/img/necessaires.png" alt="Necessaires">
            <figcaption>NECESSAIRES</figcaption>
                </button>
            </a>
        </figure>

        <figure>
            <a href="lista_produtos.jsp?tipo=guarda-chuvas">
                <button class="guarda_but">
            <img src="assets/img/guarda-chuva.png" alt="Guarda-Chuvas">
            <figcaption>GUARDA-CHUVAS</figcaption>
            </button>
            </a>
        </figure>

    </div>

</section>

<section id="produtos">

    <div class="frase">
        <h2>Uma linda bolsa para combinar com o seu look!</h2>
    </div>

    <div class="imagens produto">

        <figure>
            <a href="produto.jsp?id=1"><img src="assets/img/bolsa 2.png" alt="Bolsa Grande"></a>
            <figcaption>Bolsa Grande <span>1X R$120,00</span></figcaption>
        </figure>

        <figure>
            <a href="produto.jsp?id=3"><img src="assets/img/bolsa 1.png" alt="Bolsa Tiracolo"></a>
            <figcaption>Bolsa Tiracolo <span>1X R$80,00</span></figcaption>
        </figure>

        <figure>
            <a href="produto.jsp?id=7"><img src="assets/img/carteiras.png" alt="Pochete"></a>
            <figcaption>Pochete<span>1X R$80,00</span></figcaption>
        </figure>

    </div>

</section>

<%@include file="layout/rodape.jsp"%>