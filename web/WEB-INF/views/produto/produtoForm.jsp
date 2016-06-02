<%-- 
    Document   : produtoForm
    Created on : 18/05/2016, 15:15:23
    Author     : Deliane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>--%> 

<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8" enctype="multipart/form-data">
    <title>MDK Filmes - Cadastro de produto</title>
    <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css' />"
</head>
<body>
    <h1>Cadastro Produto</h1>
    <fieldset>
        <form action="<c:url value ='/adicionaProduto'/>" method="post">
            <!---->
            <table class="tabelaProduto">                   
                <tr>
                    <td><label>Nome:</label></td>
                    <td><input type="text" id="textNome" name ="nome" placeholder = "Insira o nome do produto"></td>
                </tr>
                <tr>
                    <td><label>Descrição:</label></td>
                    <td><textarea name="descricao" rows="3" cols="50" placeholder="Insira a descricao do produto"></textarea></td>
                </tr>
                <tr>
                    <td><label>Tipo:</label></td>
                    <td>
                        <select name="tipo" id="tipoProduto">

                            <option value=1>Blue-Ray</option>
                            <option value=2>DVD</option>

                        </select> 

                    </td>
                </tr>
                <tr>
                    <td><label>Preço:</label></td>
                    <td><input type="text" id="textPreco" name="preco"> </td>
                </tr>
                <tr>
                    <td><label>Ano:</label></td>
                    <td><input type="text" id="textAno" name="ano"> </td>
                </tr>  

                <tr>
                    <td><label>Categoria:</label></td>
                    <td>
                        <select name="categoria" id="tipoCategoria">
                            <c:forEach items="${categorias}" var="categoria">
                                <option value=${categoria.id}>${categoria.nome}</option>

                            </c:forEach>
                        </select>   



                    </td>
                </tr>
                
                <tr>
                    <td>Selecione uma imagem: </td>
                    <td><input type="file" name="file" /> 
                    <input type="submit" value="Upload"/></td>
                    
                </tr>
                
                <tr>
                    <td><input type ="submit" name="salvar" value="Salvar"></td>
                    <td><input type="submit" name="cancelar" value="Cancelar"></td>
                </tr>
            </table>        
    </fieldset>    
</form>
            
<!--        <form action="" method="post" enctype="multipart/form-data">

           Selecione uma imagem: <input type="file" name="file" /> <br>
            <input type="submit" value="Upload"/>

        </form>            -->
</body>    
</html>
