<%-- 
    Document   : categoriaExibe
    Created on : 17/05/2016, 10:48:51
    Author     : Deliane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDK Filmes - Exibe categoria</title>
    </head>
    <body>
        <h1>Editar categoria - ${categoria.id}</h1>
        <fieldset>
            <form action="<c:url value ='/alteraCategoria'/>" method="post">
                <input type="hidden" name="id" value="${categoria.id}"/>    
            <div>
                <label for="nome">Categoria</label>                
            </div>
            <div>
                <input type="text" name="nome" value="${categoria.nome}"/>
            </div>
            <div>
                <input type="submit" name="salvar" value="Salvar"/>
                <input type="submit" name="cancelar" value="Cancelar">
            </div>
        </fieldset>    
    </body>
</html>
