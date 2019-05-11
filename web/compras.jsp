<%-- 
    Document   : compras
    Created on : 03/05/2019, 08:56:54
    Author    john : 
--%>

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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compras - Cliente</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
               
        
        <br><h1>Compras do Cliente</h1><br>       
        <div class="text-center" style="width: 15%"><a href="customers.jsp" class="btn btn-outline-primary">Voltar</a><br></div>
        
        <%try{%>
        <table  class="table" border="2" style="width: 70%" align="center">
           <thead class="thead-dark"> 
              <tr>
                <th scope="col">ID Cliente</th>
                <th scope="col">Número do Serviço</th>
                <th scope="col">ID Produto</th>
                <th scope="col">Quantidade</th>
                <th scope="col">Preço</th>
              </tr>
           </thead>
           <tbody>
             <%for(Customer c: Customer.getList()){%>
              <%if(c.getId()== parametro){%>
             <%for(Purchase f: Purchase.getList()){%>
            
            <tr>
                <th scope="row"><%= parametro %></td>
                <td><%= f.getOrder_num()%></td>
                <td><%= f.getId() %></td>
                <td><%= f.getQuant() %></td>
                <td><%= f.getPrice() %></td>
            </tr>
            <%}%>
            <%}%>
            <%}%>              
            
        </table>
          </tbody>  
        <%}catch(Exception e){%>
              <h3 style="color: red">Erro: <%= e.getMessage() %> </h3>
        <%}%>
    </body>
        <%@include file="WEB-INF/jspf/footer.jspf" %>

</html>
