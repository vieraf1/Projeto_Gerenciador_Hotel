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
        <title>Inserir Quarto</title>
    </head>
    <body>
        <div class="container">
        <h2>Inserir Quarto</h2>
            <form name="inserirQuarto" action="validaInserirQuarto.jsp" method="post">
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
                        <td>Numero do Quarto:</td>
                        <td><input type="text" name="NUMERO_QUARTO" value=""></td>
                    </tr>
                    <tr>
                        <td>VALOR DA DIARIA:</td>
                        <td><input type="text" name="VALOR" value=""></td>
                    </tr>
                    <tr>
                        <td>STATUS DO QUARTO:</td>
                        <td><input type="text" name="STATUS" value=""></td>
                    </tr>
                    <tr>
                        <td>TELEFONE DO QUARTO:</td>
                        <td><input type="text" name="TELEFONE" value=""></td>
                    </tr>
                </table>
                <input type="submit" name="Enviar" value="OK">
            </form>
        </div>  
    </body>
</html>
