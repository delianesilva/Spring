<%-- 
    Document   : menu
    Created on : 07/05/2016, 14:27:45
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="t" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDKFILMES - Menu</title>
        
        <meta charset = "UTF-8">

        <link rel = "stylesheet" href = "<c:url value="/resources/css/configuracoes.css"/>">
    </head>	
    <body> 
        <nav>
            <ul class = "menu">
                <li><a href = "#">DVD</a>
                    <ul>
                        <li><a href = "#" target = "frameprincipal">Ação</a></li>				
                        <li><a href = "#" target = "frameprincipal">Romance</a></li>				
                    </ul>	
                </li>		
                <li><a href = "#">BluRay</a>
                    <ul>
                        <li><a href = "#">Terror</a></li>				
                        <li><a href = "#">Drama</a></li>				
                    </ul>	
                </li>			
                <li><a>Categoria</a>
                   <ul>
                       <li><a href = "<c:url value="/categoria"/>" target="frameprincipal">Categoria</a></li>
                       <li><a href="<c:url value="/listaCategoria"/>" target="frameprincipal">Lista Categoria</a></li>
                    </ul> 
                    
                </li>
                
                <li><a>Cliente</a>
                   <ul>
                       <li><a href = "<c:url value="/cliente"/>" target="frameprincipal">Cliente</a></li>                      
                       <li><a href = "<c:url value="/listaCliente"/>" target="frameprincipal">Clientes</a></li>  
                    </ul> 
                    
                </li>
                
                <li><a>Mensagem</a>
                   <ul>
                       <li><a href = "<c:url value="/mensagem"/>" target="frameprincipal">Mensagem</a></li>             
                       <li><a href = "<c:url value="/listaMensagens"/>" target="frameprincipal">Mensagens</a></li>             
                    </ul>                     
                </li>
                
                <li><a>Produto</a>
                   <ul>
                       <li><a href = "<c:url value="/produto"/>" target="frameprincipal">Produto</a></li>
                       <li><a href = "<c:url value="/listaProduto"/>" target="frameprincipal">Lista Produtos</a></li>  
                    </ul>                     
                </li>
            </ul>
        </nav>    
    </body>
</html>
