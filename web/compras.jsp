<%-- 
    Document   : compras
    Created on : 03/05/2019, 08:56:54
    Author    john : 
--%>

<%@page import ="br.com.fatecpg.jdbc.Product" %>
<%@page import="br.com.fatecpg.jdbc.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compras</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>JDBC WebApp</h1>
        <h2>Suas Compras</h2>
        <%try{%>
        <table border = 1>
            <tr>
                <th>ID Cliente</th>
                <th>Nome</th>
                <th>ID Produto</th>
                <th>Quantidade</th>
                <th>Preço</th>
            </tr>
            <%for(Product f: Product.getList()){%>
            <%for(Customer c: Customer.getList()){%>
            <tr>
                <td><%= c.getId() %></td>
                <td><%= c.getName() %></td>
                <td><%= f.getId() %></td>
                <td><%= f.getQuant() %></td>
                <td><%= f.getPrice() %></td>
            </tr>
            <%}%>
            <%}%>
        </table>
        <%}catch(Exception e){%>
              <h3 style="color: red">Erro: <%= e.getMessage() %> </h3>
        <%}%>
    </body>
    <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
