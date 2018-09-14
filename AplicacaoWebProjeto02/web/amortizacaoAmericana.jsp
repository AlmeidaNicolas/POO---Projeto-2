<%-- 
    Document   : amortizacaoAmericana
    Created on : 13/09/2018, 17:27:00
    Author     : Hillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Americana</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        <h1>Amortização Americana</h1>
        <form>
           Valor Emprestimo: <input type="text" name="emprestimo" />
                Taxa Juros (%):<input type="text" name="juros" />
                Meses <input type="text" name="meses" />
                <input type="submit" name="calcular" value="Calcular" /> 
        </form>
    </body>
</html>

