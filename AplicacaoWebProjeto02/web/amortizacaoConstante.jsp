<%-- 
    Document   : amortizacaoConstante
    Created on : 13/09/2018, 17:26:40
    Author     : Hillo
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        <h1>Amortização Constante</h1>
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
                juros = juros/100;
                double meses = Double.parseDouble(request.getParameter("meses"));
                double parcela;
                double amortizacao = emprestimo/meses;
                double saldo = emprestimo;
                double jurostabela = 0;
                
                
            %>
            <table border="1">
                <tr>
                    <th>Meses</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                    <th>Saldo Devedor</th>
                </tr>
                <tr>
                    <th>0</th>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><%= NumberFormat.getCurrencyInstance().format(emprestimo)%></td>
                <tr>
                    <%
                        
                        for (int i=1; i<=meses; i++){
                            jurostabela = (meses-i+1)*juros*amortizacao;
                            parcela = amortizacao + jurostabela;
                            saldo = saldo - amortizacao;
                            
                            
                        
                        %>
                        <th><%= i%></th>
                        <td><%= NumberFormat.getCurrencyInstance().format(parcela) %></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(jurostabela) %></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(amortizacao) %></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(saldo) %></td>
                </tr>
                
                <%}%>
             
            </table>
                <%}%>
            
            

        <%@include file="WEB-INF/jspf/rodape.jspf" %>  
    </body>
</html>

