<%-- 
    Document   : tabelaPrice
    Created on : 13/09/2018, 17:27:23
    Author     : Hillo
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Calculo Tabela Price</h1>
        <form>
            Valor Emprestimo: <input type="text" name="emprestimo" />
            Taxa Juros (%):<input type="text" name="juros" />
            Meses <input type="text" name="meses" />
            <input type="submit" name="calcular" value="Calcular" />
        </form>
        <%
            if(request.getParameter("calcular")!=null){
                
                double emprestimo = Double.parseDouble(request.getParameter("emprestimo"));
                double juros = Double.parseDouble(request.getParameter("juros"));
                double meses = Double.parseDouble(request.getParameter("meses"));
            %>    
            <table>
                <tr>
                    <th>Meses</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                    <th>Saldo Devedor</th>
                </tr>
                <tr>
                    <td>0</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><%= NumberFormat.getCurrencyInstance().format(emprestimo)%></td>
                </tr>
            <%}%> 
            </table>
            
            

        <%@include file="WEB-INF/jspf/rodape.jspf" %>            
    </body>
</html>
