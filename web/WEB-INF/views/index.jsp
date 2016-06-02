<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="t" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>MDK FILMES - Pagina Principal</title>
        <meta charset = "UTF-8">
        <link rel = "stylesheet" href = "<c:url value="/resources/css/configuracoes.css"/>">
    </head>
    <body>
    <header> 
        <table> 
            <tr>
                <td>
            <figure> <img  class = "imglogo" src= "<c:url value='/resources/imagem/minhaLogo.png'/>"></figure>
            </td>
            <td><h1>MDKFILMES</h1></td>            
            <td>
                
                <iframe  name = "frameacesso" class ="frameacesso" src= '<c:url value='/acesso'/>'></iframe>
                
            </tr>

        </table>					
        <nav id = "navH">
                <object class = "ob1" data= "<c:url value="/menuh"/>"> </object>
            
        </nav>	
    </header>	
    <div>
        <section id = "secnav">
            <nav class = "nav1">                  
                <object data= "<c:url value='/menu'/>"> </object>
            </nav>
        </section>
        <section class = "secprinc">
            <iframe  name = "frameprincipal" class = "frame" src= "<c:url value='/princ'/>"></iframe>
        </section>
        <aside id = "lado">
            <!-- width="100%" height="110px"-->
            <object  data= "html/formulario/pesquisa.html"></object>
            <h1>Links Interessantes</h1>
            <a href = "http://www.br.warnerbros.com/" target = "_blank">Warner</a><br>
            <a href = "https://www.universalpictures.com/" target = "_blank">Universal</a><br>

        </aside>
    </div>
    <footer>
        <!-- width="100%" height="110px"   style = "border:1px solid black; margin: auto;"-->
        <object data= "html/rodape.html" ></object>
    </footer>
</body>
</html>
