<%-- 
    Document   : produto
    Created on : 04/05/2019, 21:40:54
    Author    finha : 
--%>

<%@page import="br.com.fatecpg.jdbc.Manufacturer"%>
<%@page import="br.com.fatecpg.jdbc.Product"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import ="br.com.fatecpg.jdbc.Purchase" %>
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
        <a href="manufacturer.jsp">Voltar</a>
        <h2>LISTA DOS PRODUTOS DO FABRICANTE</h2>
        
        
        <%try{%>
        <table border = 1>
            <tr>
                 <th>ID FABRICANTE</th>
                <th>ID PRODUTO</th>
                <th>DESCRIÇÃO</th>
                <th>ID FORNECEDOR</th>
                <th>QUANTIDADE</th>               
                
            </tr>
            
            <%for(Manufacturer m: Manufacturer.getList()){%>
            <%if(m.getId()== parametro){%>
              <%for(Product p: Product.getList()){%>
            
            <tr>
                <td><%= parametro %></td>
                <td><%= p.getProduct_id()%></td>
                <td><%= p.getDescription() %></td>
                <td><%= p.getManufacturer_id() %></td>
                <td><%= p.getQuantity_on_hand() %></td>
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
