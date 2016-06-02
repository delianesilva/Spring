<%-- 
    Document   : produtoList
    Created on : 21/05/2016, 15:30:21
    Author     : Deliane
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDK Filmes - Produtos</title>
    </head>
    <body>
       <h1>Lista de Produtos</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Ações</th>
            </tr>       
            <c:forEach items="${produtos}" var ="produto">
                <tr>
                    <td>${produto.id}</td>
                    <td>${produto.nome}</td>
                    <td>
                        <a href="excluiProduto?id=${produto.id}"
                           onclick ="return confirm('Deseja realmente excluir?' + ${produto.id})">Remover</a>
                        
                        <a href="exibeProduto?id=${produto.id}">Alterar</a>
                        
                    </td>
                </tr>                
            </c:forEach>    
        </table>
    </body>
</html>
