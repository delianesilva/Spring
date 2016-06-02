<%-- 
    Document   : acesso
    Created on : 07/05/2016, 13:11:57
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="t" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <!--links para arquivos de configuração-->
        
        
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" href ="<c:url value='/resources/css/configuracoes.css'/>">
        <script src="<c:url value='/resources/js/validarAcesso.js'/>"></script>
        <Script src ="<c:url value='/resources/js/jquery.js'/>" type = "text/javascript"></Script>
<!--        <script>
            $(document).ready(function () {
                $("form").on("submit", function () {
                    if ($("#nome_id").val() === '' || $("#senha_id").val() === '') {
                        alert('Preencha todos os campos');
                        return false;
                    } else {
                        return true;
                    }
                });
            });
        </script>-->
    </head>
    <body>
        <form  method="post" action="acesso.html">
            <table>
                <tr>
                    <td><label for = "nome_id">Usuário</label></td>
                    <td>
                        <input type="text"   id = "nome_id"  name="txtNome" />
                    </td>
                </tr>
                <tr>
                    <td><label for = "senha_id">Senha</label></td>
                    <td>
                        <input type = "password"  id = "senha_id" name="txtSenha" />
                    </td>
                </tr>				
                <tr>
                    <td colspan = "2">	
                        <input type="submit" value="Entrar" id = "btnEnviar"/>					
                    </td>				
                </tr>			
            </table>				
        </form>	
        <a href = "#">Cadastre-se</a>
        <a href = "#">Esqueci minha senha</a>
    </body>
</html>
