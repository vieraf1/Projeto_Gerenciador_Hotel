<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
      Hotel hot = new Hotel(0,"","","","");
      HotelControl hotCont = new HotelControl();
      List<Hotel> hots = hotCont.ListaHotel(hot);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>Inserir Funcionário</title>
    </head>
    <body>
        <div class="container">
        <h2>Inserir Funcionário</h2>
            <form name="inserirFuncionario" action="validaInserirFuncionario.jsp" method="post">
                <table>
                    <tr>
                        <td>Hotel:</td>
                        <td>
                            <select name="ID_HOTEL" class="browser-default">
                                <% for (Hotel hott : hots) { %>
                                    <option value="<%=hott.getIdHotel()%>"><%=hott.getNomeHotel()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Login:</td>
                        <td><input type="text" name="LOGIN" value=""></td>
                    </tr>
                    <tr>
                        <td>Senha:</td>
                        <td><input type="text" name="SENHA" value=""></td>
                    </tr>
                    <tr>
                        <td>Nome do Funcionario:</td>
                        <td><input type="text" name="NOME" value=""></td>
                    </tr>
                    <tr>
                        <td>Idade do Funcionario:</td>
                        <td><input type="text" name="IDADE" value=""></td>
                    </tr>
                    <tr>
                        <td>RG do Funcionario:</td>
                        <td><input type="text" name="RG" value=""></td>
                    </tr>
                    <tr>
                        <td>CPF do Funcionario:</td>
                        <td><input type="text" name="CPF" value=""></td>
                    </tr>
                    <tr>
                        <td>CTPS do Funcionario:</td>
                        <td><input type="text" name="CTPS" value=""></td>
                    </tr>
                    <tr>
                        <td>Telefone do Funcionario:</td>
                        <td><input type="text" name="TELEFONE" value=""></td>
                    </tr>
                </table>
                <input type="submit" name="Enviar" value="OK">
            </form>
        </div>  
    </body>
</html>
