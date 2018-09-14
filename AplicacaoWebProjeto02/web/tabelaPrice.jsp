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
        <h1>O que é Tabela Price?</h1>
        
        <div class="divPrice">
            <p class="txtPrice1">
                Também chamado de sistema francês de amortização,
                é um método usado em amortização de empréstimo 
                cuja principal característica é apresentar prestações
                (ou parcelas) iguais. O método foi apresentado em 1771
                por Richard Price em sua obra "Observações sobre 
                Pagamentos Remissivos".

                O método foi idealizado pelo seu autor para pensões e 
                aposentadorias. No entanto, foi a partir da 
                2ª revolução industrial que sua metodologia de 
                cálculo foi aproveitada para cálculos de amortização 
                de empréstimo.
            </p>
        
            <h2>Cálculo da Tabela Price</h2>
            <p class="txtPrice2">
                A tabela Price usa o regime de juros compostos para 
                calcular o valor das parcelas de um empréstimo e, 
                dessa parcela, há uma proporção relativa ao pagamento 
                de juros e amortização do valor emprestado.
            </p>
            
            <form class="price">
                Valor Emprestimo: <input type="text" name="emprestimo" />
                Taxa Juros (%):<input type="text" name="juros" />
                Meses <input type="text" name="meses" />
                <input type="submit" name="calcular" value="Calcular" />
            </form>
        </div>
        
        <%
            if(request.getParameter("calcular")!=null){
                
                double emprestimo = Double.parseDouble(request.getParameter("emprestimo"));
                double juros = Double.parseDouble(request.getParameter("juros"));
                juros = juros/100;
                double meses = Double.parseDouble(request.getParameter("meses"));
                double parcela = 0;
                double amortizacao = 0;
                double saldo = 0;
                double jurostabela = 0;
                double jurosatual = 0;
                
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
                        parcela = emprestimo * (juros/(1-(1/(Math.pow((1+juros),meses)))));
                        for (int i=1; i<=meses; i++){
                            jurostabela = emprestimo * juros;
                            amortizacao = parcela - jurostabela;
                            saldo = emprestimo - amortizacao;
                            
                            
                        
                        %>
                        <th><%= i%></th>
                        <td><%= NumberFormat.getCurrencyInstance().format(parcela) %></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(jurostabela) %></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(amortizacao) %></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(saldo) %></td>
                </tr>
                <%emprestimo = emprestimo - amortizacao;%>
                <%}%>
             
            </table>
                <%}%>
            
            

        <%@include file="WEB-INF/jspf/rodape.jspf" %>            
    </body>
</html>
