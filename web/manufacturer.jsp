<%-- 
    Document   : Manufacturer
    Created on : 29/04/2019, 14:33:06
    Author     : finha
--%>

<%@page import="br.com.fatecpg.jdbc.Manufacturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabricantes - JDBC WebApp</title>
    </head>
    <body>   
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Fabricantes WebApp</h1>
        <h2>Fabricantes</h2>
        <%try{%>
        <table border = 1>
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>E-EMAIL</th>
                <th>CIDADE</th>
            </tr>
            <%for(Manufacturer m: Manufacturer.getList()){%>
            <tr>
                <td><%= m.getId() %></td>
                <td><%= m.getName() %></td>
                <td><%= m.getEmail() %></td>
                <td><%= m.getCity() %></td>
                 
            </tr>
            <%}%>
        </table>
        <%}catch(Exception e){%>
              <h3 style="color: red">Erro: <%= e.getMessage() %> </h3>
        <%}%>
     </body>
     <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
        
        
    

