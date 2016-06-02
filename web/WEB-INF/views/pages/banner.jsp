<%-- 
    Document   : banner
    Created on : 07/05/2016, 17:54:10
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <html>
        <head>
            <link href="../css/banner.css" rel="stylesheet" type="text/css" />
           <link rel = "stylesheet" href = "<c:url value="/resources/css/configuracoes.css"/>">
        </head>
        <body>
            <div id="banner" class="banner">
                <div id="banner_img">
                    <img src="../banner_img/1.jpg" alt="Banner"/>
                </div>
                <div id="botoes">
                    <a href="javascript:void(0);" id="banner_img_1" class="hover" onclick = "mudaImg('0');">1</a>
                    <a href="javascript:void(0);" id="banner_img_2" onclick="mudaImg('1');">2</a>
                    <a href="javascript:void(0);" id="banner_img_3" onclick="mudaImg('2');">3</a>
                    <a href="javascript:void(0);" id="banner_img_4" onclick="mudaImg('3');">4</a>
                </div>
            </div>
        </body>
    </html>
</html>
