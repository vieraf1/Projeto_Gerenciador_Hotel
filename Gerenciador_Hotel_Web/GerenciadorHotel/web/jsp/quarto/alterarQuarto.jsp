<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Quarto qua = new Quarto(id,0,0,0,0,"");
    QuartoControl quaCont = new QuartoControl();
    qua = quaCont.buscarQuarto(qua);
    
    Hotel hotEnt = new Hotel(0,"","","","");
    HotelControl hotCont = new HotelControl();
    List<Hotel> hots = hotCont.ListaHotel(hotEnt);
    
    String pbusca = request.getParameter("PBUSCA");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Quartos</title>
    </head>
    <body>
        <div class="container">
       <h1>Alterar Quartos</h1>
        <form name="alterarQuarto" action="validaAlterarQuarto.jsp" method="post">
            <table>
                <tr>
                    <td>Hotel:</td>
                        <td>
                            <select NAME="ID_Hotel" class="browser-default">
                                <% for (Hotel hot : hots) { %>
                                    <% if( hot.getIdHotel() == qua.getIdHotel() ) { %>
                                        <option selected value="<%=hot.getIdHotel()%>"><%=hot.getNomeHotel()%></option>
                                    <% } else { %>
                                        <option value="<%=hot.getIdHotel()%>"><%=hot.getNomeHotel()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Numero do Quarto:</td>
                        <td><input type="text" name="Numero" value="<%=qua.getNumeroQuarto()%>"></td>
                </tr>
                <tr>
                        <td>Valor da Diaria:</td>
                        <td><input type="text" name="Valor" value="<%=qua.getValorDiaria()%>"></td>
                </tr>
                <tr>
                        <td>Status:</td>
                        <td><input type="text" name="Status" value="<%=qua.getStatusQuarto()%>"></td>
                </tr>
                <tr>
                        <td>Telefone:</td>
                        <td><input type="text" name="Telefone" value="<%=qua.getTelefoneQuarto()%>"></td>
                </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=qua.getIdQuarto()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
