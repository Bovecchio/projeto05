<%-- 
    Document   : Products
    Created on : 03/05/2019, 00:24:48
    Author     : john
--%>

<%@page import ="br.com.fatecpg.jdbc.Product" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
    </head>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>JDBC WebApp</h1>
        <h2>Produtos</h2>
        <%try{%>
        <table border = 1>
            <tr>
                <th>ID</th>
                <th>CODIGO</th>
                <th>PREÇO</th>
                
            </tr>
            <%for(Product f: Product.getList()){%>
            <tr>
                <td><%= f.getId()%></td>
                <td><%= f.getQuant() %></td>
                <td><%= f.getPrice() %></td>
            </tr>
            <%}%>
        </table>
        <%}catch(Exception e){%>
              <h3 style="color: red">j <%= e.getMessage() %> </h3>
        <%}%>
</html>
