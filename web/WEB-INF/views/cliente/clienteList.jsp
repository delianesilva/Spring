<%-- 
    Document   : listCategoria
    Created on : 07/05/2016, 15:07:08
    Author     : Maria
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDK Filmes - Clientes</title>
    </head>
    <body>
       <h1>Lista de Clientes</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Ação</th>
            </tr>       
            <c:forEach items="${clientes}" var ="cliente">
                <tr>
                    <td>${cliente.id}</td>
                    <td>${cliente.nome}</td>
                    <td>
                        <a href="exibeCliente?id=${cliente.id}">Alterar</a>
                        
                    </td>
                </tr>                
            </c:forEach>    
        </table>        
        
        
    </body>
</html>
