<%-- 
    Document   : mensagemList
    Created on : 12/05/2016, 16:08:35
    Author     : Maria
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Email</th>
                <!--<th>email</th>-->
                <th>mensagem</th>
            </tr>
           
                <c:forEach items = "${mensagens}" var = "mensagem">
                     <tr>
                        <td>${mensagem.email}</td>
                        <td>${mensagem.mensagem}</td>  
                    </tr>   
                </c:forEach> 
            
        </table>
    </body>
</html>
