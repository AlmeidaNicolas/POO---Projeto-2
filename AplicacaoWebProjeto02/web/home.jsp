<%-- 
    Document   : Home
    Created on : 13/09/2018, 13:33:57
    Author     : Hillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 2</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Projeto Dois</h1>
        <p class="introducao">
            POO - Prof. Ricardo Pupo - 4ºSEM - ADS. <br>
            Integrantes do grupo: <br>
            Gabriel Fernandes Bento <br>
            Nicolas Pimentel de Almeida <br>
            Roberto Santanna Bernardo <br>
            Thyago Santos de Araujo <br>
        </p>
        <p class="objetivo">
            Este projeto tem como objetivo efetuar os cálculos 
            de Amortização, este sendo um processo de extinção 
            de uma dívida através de pagamentos periódicos, 
            que são realizados em função de um planejamento,
            de modo que cada prestação corresponde à soma do
            reembolso do capital ou do pagamento dos juros do
            saldo devedor, podendo ser o reembolso de ambos, sendo
            que os juros são sempre calculados sobre o saldo devedor.
            Este projeto é capaz de calcular Amortização Constante 
            e Americana, além de gerar a Tabela Price, uma outra forma
            de se ter a amortização.
        </p>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
