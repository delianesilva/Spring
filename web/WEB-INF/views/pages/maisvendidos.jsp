<%-- 
    Document   : maisvendidos
    Created on : 07/05/2016, 18:14:42
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDKFILMES - Mais Vendidos</title>
        <link rel = "stylesheet" href = "<c:url value="/resources/css/configuracoes.css"/>">

    </head>
    <body>
        <table>
            <tr>
                <th class = "cabecalhoTh">

                    Mais Vendidos
                </th>
            </tr>
            <tr>
                <td>
                    <figure>
                        <a href = "detalheprodutowtr.html" target = "frameprincipal"><img src="../imagem/romance/wtr.jpg"/></a>											
                    </figure>
                </td>
                <td>
                    Um amor para recordar<br> R$ 15,99
                </td>
            </tr>
            <tr>
                <td>
                    <figure>
                        <a href = "detalheprodutomercenario.html" target = "frameprincipal">
                            <img src="../imagem/acao/mercenarios.jpg"/>
                        </a>
                    </figure>
                </td>
                <td>
                    Mercenário 2<br> R$ 20,99
                </td>
            </tr>
        </table>
    </body>
</html>
