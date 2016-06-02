<%-- 
    Document   : novidades
    Created on : 07/05/2016, 18:15:33
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>MDKFILMES - Novidades</title>
        <link rel = "stylesheet" href = "<c:url value="/resources/css/configuracoes.css"/>">

    </head>
    <body>
        <table>
            <tr>
                <th class = "cabecalhoTh">					
                        Novidades
                </th>
            </tr>
            <tr>
                <td>
                    <figure>
                        <a href = "detalheprodutotlr.html" target = "frameprincipal">
                            <img src="../imagem/romance/tlr.jpg"/>
                        </a>											
                    </figure>
                </td>
                <td>
                    Uma longa jornada<br> R$ 29,99
                </td>
            </tr>
            <tr>
                <td>
                    <figure>
                        <a href = "detalheproduto13distrito.html" target = "frameprincipal">
                            <img src="../imagem/acao/13Distrito.jpg"/>
                        </a>
                    </figure>

                </td>
                <td>
                    13º Distrito<br> R$ 27,99
                </td>
            </tr>
        </table>
    </body>
</html>
