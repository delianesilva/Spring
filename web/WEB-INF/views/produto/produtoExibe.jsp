<%-- 
    Document   : produtoExibe
    Created on : 21/05/2016, 15:29:44
    Author     : Deliane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDK Filmes - Exibe Produto</title>
        <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css' />"
    </head>
     <body>
        <h1>Editar Produto - ${produto.id}</h1>
        <fieldset>
            <form action="<c:url value ='/alteraProduto'/>" method="post">
                <input type="hidden" name="id" value="${produto.id}"/> 
                
                <table class="tabelaCliente">                   
                    <tr>
                        <td><label>Nome:</label></td>
                        <td><input type="text" id="textNome" name ="nome" value="${produto.nome}"></td>
                    </tr>
                    <tr>
                        <td><label>Descrição:</label></td>
                        <td><textarea name="descricao" rows="3" cols="50" >${produto.descricao}</textarea></td>
                    </tr>
                    <tr>
                        <td><label>Tipo:</label></td>
                        <td>
                            <select name="tipo" id="tipoProduto" >
                                
                                <option value=1 >Blue-Ray</option>
                                <option value=2 >DVD</option>
                                
                            </select> 
                        
                        </td>
                    </tr>
                    <tr>
                        <td><label>Preço:</label></td>
                        <td><input type="text" id="textPreco" name="preco" value="${produto.preco}"> </td>
                    </tr>
                    <tr>
                        <td><label>Ano:</label></td>
                        <td><input type="text" id="textAno" name="ano" value="${produto.ano}"> </td>
                    </tr>  
                    
<!--                   <tr>
                    <td><label>Categoria:</label></td>
                    <td>
                        <select name="categoria" id="tipoCategoria">
                            <%--<c:forEach items="${categorias}" var="categoria">--%>
                                <option value=${categoria.id}>${categoria.nome}</option>

                            <%--</c:forEach>--%>
                        </select>   


                    </td>
                </tr>-->
                    
                    <tr>
                        <td><input type ="submit" name="salvar" value="Salvar"></td>
                        <td><input type="submit" name="cancelar" value="Cancelar"></td>
                    </tr>
            </table>        
        </fieldset>    
        </form>
    </body>    
</html>
