<%-- 
    Document   : compras
    Created on : 03/05/2019, 08:56:54
    Author    john : 
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import ="br.com.fatecpg.jdbc.Product" %>
<%@page import="br.com.fatecpg.jdbc.Customer"%>

<%    String id = request.getParameter("id");%>
<%int  parametro = Integer.parseInt(id);%>

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
                <th>ID Produto</th>
                <th>Quantidade</th>
                <th>Preço</th>
            </tr>
            
             <%for(Customer c: Customer.getList()){%>
              <%if(c.getId()== parametro){%>
             <%for(Product f: Product.getList()){%>
            
            <tr>
                <td><%= parametro %></td>
                <td><%= f.getId() %></td>
                <td><%= f.getQuant() %></td>
                <td><%= f.getPrice() %></td>
            </tr>
            <%}%>
            <%}%>
            <%}%>
            
            
        </table>
        <%}catch(Exception e){%>
              <h3 style="color: red">Erro: <%= e.getMessage() %> </h3>
        <%}%>
    </body>
</html>
