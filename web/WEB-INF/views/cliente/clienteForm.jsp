<%-- 
    Document   : clienteForm
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
        <title>MDK Filmes - Cadastro de cliente</title>
        <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css' />"
    </head>
    <body>
        <h1>Cadastro Cliente</h1>
        <fieldset>
            <form action="<c:url value ='/adicionaCliente'/>" method="post">
                <table class="tabelaCliente">                   
                    <tr>
                        <td><label>Nome:</label></td>
                        <td><input type="text" id="textNome" name ="nome" placeholder = "Insira seu nome"></td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><input type="text" id="textEmail" name="email" placeholder = "Insira seu email"></td>
                    </tr>
                    <tr>
                        <td><label>Login:</label></td>
                        <td><input type="text" name="login" id="textLogin"> </td>
                    </tr>
                    <tr>
                        <td><label>Senha:</label></td>
                        <td><input type="text" name="senha" id="textSenha"> </td>
                    </tr>
                    <tr>
                        <td><input type ="submit" name="salvar" value="Salvar"></td>
                        <td><input type="submit" name="cancelar" value="Cancelar"></td>
                    </tr>
            </table>        
        </fieldset>    
        </form>
    </body>
</html>
