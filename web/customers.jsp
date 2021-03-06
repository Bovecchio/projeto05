<%-- 
    Document   : customers
    Created on : 29/04/2019, 14:33:06
    Author     : finha
--%>

<%@page import="br.com.fatecpg.jdbc.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>  
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JDBC WebApp</title>
    </head>
 <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
        <br><h1>Clientes</h1><br>
                
        <%try{%>
        <table class="table" border="2" style="width: 70%" align="center">
         <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NOME</th>
                <th scope="col">E-mail</th>
                <th scope="col">Ações</th>
            </tr>
         </thead>
         <tbody>
            <%for(Customer c: Customer.getList()){%>
            <tr>
                <th scope="row"><%= c.getId() %></td>
                <td><%= c.getName() %></td>
                <td><%= c.getEmail() %></td>
                <td>
                   <a href="compras.jsp?id=<%=c.getId()%>">
                Ver Compras</a>
                 
                </td>
            </tr>
            <%}%>
        </table>
        </tbody>
        <%}catch(Exception e){%>
              <h3 style="color: red">Erro: <%= e.getMessage() %> </h3>
        <%}%>
   </body>  
 <%@include file="WEB-INF/jspf/footer.jspf" %>
    
</html>
        
        
    

