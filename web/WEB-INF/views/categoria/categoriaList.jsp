<%-- 
    Document   : listCategoria
    Created on : 07/05/2016, 15:07:08
    Author     : Deliane
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDK Filmes - Lista Categoria</title>
    </head>
    <body>
       
        <h1>Lista de Categorias</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Categoria</th>
                <th>Ação</th>
            </tr>       
            <c:forEach items="${categorias}" var ="categoria">
                <tr>
                    <td>${categoria.id}</td>
                    <td>${categoria.nome}</td>
                    <td>
                        <a href = "excluiCategoria?id=${categoria.id}"
                        onclick ="return confirm('Deseja realmente excluir?' + ${categoria.id})">Remover</a>
                        <a href="exibeCategoria?id=${categoria.id}">Alterar</a>
                        
                    </td>
                </tr>                
            </c:forEach>    
        </table>        
    </body>
</html>
