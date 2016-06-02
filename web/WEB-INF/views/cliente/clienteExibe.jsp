<%-- 
    Document   : clienteEditaForm
    Created on : 17/05/2016, 00:59:21
    Author     : Deliane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <title>MDK Filmes - Exibe cliente</title>
        <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css' />"
    </head>
    <body>
        <h1>Editar cliente - ${cliente.id}</h1>
        <fieldset>
            <form action="<c:url value ='/alteraCliente'/>" method="post">
                <input type="hidden" name="id" value="${cliente.id}"/> 
                
                <table class="tabelaCliente">                   
                    <tr>
                        <td><label>Nome:</label></td>
                        <td><input type="text" id="textNome" name ="nome" value="${cliente.nome}"></td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><input type="text" id="textEmail" name="email" value="${cliente.email}"></td>
                    </tr>
                    <tr>
                        <td><label>Login:</label></td>
                        <td><input type="text" name="login" id="textLogin" value="${cliente.login}"> </td>
                    </tr>
                    <tr>
                        <td><label>Senha:</label></td>
                        <td><input type="password" name="senha" id="textSenha" value="${cliente.senha}"> </td>
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
