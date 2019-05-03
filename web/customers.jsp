<%-- 
    Document   : customers
    Created on : 29/04/2019, 14:33:06
    Author     : finha
--%>

<%@page import="br.com.fatecpg.jdbc.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JDBC WebApp</title>
    </head>
    
         <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>JDBC WebApp</h1>
        <h2>Clientes</h2>
        <%try{%>
        <table border = 1>
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>E-mail</th>
                <th>Ações</th>
            </tr>
            <%for(Customer c: Customer.getList()){%>
            <tr>
                <td><%= c.getId() %></td>
                <td><%= c.getName() %></td>
                <td><%= c.getEmail() %></td>
                <td>
                    <a href="compras.jsp">
                   detalhes</a>
                </td>
            </tr>
            <%}%>
        </table>
        <%}catch(Exception e){%>
              <h3 style="color: red">Erro: <%= e.getMessage() %> </h3>
        <%}%>
     
</html>
        
        
    

