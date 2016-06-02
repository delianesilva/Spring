<%-- 
    Document   : principal
    Created on : 07/05/2016, 17:50:37
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDKFILMES - Página Principal</title>
        <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css'/>">

    </head>
    <body>
        <table id = "tabprincipal">
            <tr>
                <td colspan = "2">
                    <object  data= "<c:url value='/banner'/>"> </object>
                </td>
            <tr>
            <tr>
                <td>
                    <object  data= "<c:url value='/vendidos'/>"></object>
                </td>
                <td>
                    <object  data="<c:url value='/nov'/>"> </object>
                </td>
            <tr>

        </table>
    </body>
</html>
