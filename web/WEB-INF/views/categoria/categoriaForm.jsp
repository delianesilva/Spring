<%-- 
    Document   : categoriaForm
    Created on : 07/05/2016, 17:28:42
    Author     : Deliane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>MDK Filmes -Cadastro de categoria</title>
        <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css' />"
    </head>
    <body>
        <h1>Cadastro de categoria</h1>
        <fieldset>
            <form action="<c:url value ='/adicionaCategoria'/>" method="post">
            <div>
                <label for="nome">Categoria</label>                
            </div>
            <div>
                <input type="text" name="nome" placeholder="Insira uma categoria"/>
            </div>
            <div>
                <input type="submit" name="salvar" value="Salvar"/>
                <input type="submit" name="cancelar" value="Cancelar">
            </div>
        </fieldset>    
        </form>
    </body>
</html>
