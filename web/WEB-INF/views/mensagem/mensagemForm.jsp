<%-- 
    Document   : formMensagem
    Created on : 07/05/2016, 01:32:48
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MDK Filmes - Contato</title>	
         <link rel = "stylesheet" href = "<c:url value='/resources/css/configuracoes.css'/>"

    </head>

    <body>
        <h1>Contato</h1>		
        <fieldset>
            <legend>Envie sua Mensagem</legend>
            <%--<form:errors path="mensagem.nome">--%>
            <form action="<c:url value='/adicionaMensagem'/>" method="post">
                <table>                   
                    <tr>
                        <td><label>Nome:</label></td>
                        <td><input type="text" id="textNome" name ="nome" placeholder = "Insira seu nome"></td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><input type="text" id="textEmail" name="email" placeholder = "Insira seu email"></td>
                    </tr>
                    <tr>
                        <td><label>Telefone:</label></td>
                        <td><input type="text" name="telefone" id="textTelefone"> </td>
                    </tr>
                    <tr>
                        <td><label>Assunto:</label></td>
                        <td> 
                            <select name="assunto" id="assuntoMensagem">
                                
                                <option value=1>Elogio</option>
                                <option value=2>Sugestão</option>
                                <option value=3>Crítica</option>

                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td><label>Mensagem:</label></td>
                        <td><textarea rows="10" cols="40" name="mensagem"> </textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type ="submit" id="botaoEnviar" value="Enviar">
                            
                        </td>
                        <td colspan="2">
                            
                            <%--<form:errors path="mensagem.nome" cssStyle="color:red"/>--%>
                        </td>
                    </tr>	
                </table>
            </form>
        </fieldset>
        <fieldset>
            <table class="tabelaContato">
                <tr>
                    <td>Horário de Atendimento:</td>
                    <td>De segunda a sexta-feira, das 10:00hs às 16:00hs</td>
                </tr>
                <tr>
                    <td>Telefones:</td>
                    <td>(92)98119-0001  /  (92) 3621-6700</td>
                </tr>
                <tr>
                    <td>Emails:</td>
                    <td>maria.correia.s@gmail.com / deliane.ifam@gmail.com</td>
                </tr>

                <tr>
                    <td>Endereço:</td>
                    <td>Av. 7 de setembro, 1975 - Centro Manaus - Amazonas Cep: 69020-120</td>
                </tr>
            </table>
        </fieldset>
        <iframe id="mapaContato" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.849854084913!2d-60.015011586043435!3d-3.134343541315884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x926c05776ab394a3%3A0x42dbca416e1ebbcb!2sInstituto+Federal+de+Educa%C3%A7%C3%A3o%2C+Ci%C3%AAncia+e+Tecnologia+do+Amazonas!5e0!3m2!1spt-BR!2sbr!4v1458000835719">	
        </iframe>
    </body>
</html>