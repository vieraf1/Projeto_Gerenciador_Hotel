<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
    String numero = request.getParameter("TELEFONE");
    
    Quarto qua = new Quarto(0,0,0,0,0,numero);
    QuartoControl quatCont = new QuartoControl();
    List<Quarto> quats = quatCont.ListaQuarto(qua);
        
    Funcionario funcLogado = (Funcionario) session.getAttribute("FuncionarioLogado");
    String url = "PBUSCA=" + qua.getNumeroQuarto() +"&ID=" ;
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Quartos</title>
    </head>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="NomeHotel">Hotel</th>
                  <th data-field="Numero">Numero do Quarto</th>
                  <th data-field="Valor">Valor da Diaria</th>
                  <th data-field="Status">Status do Quarto</th>
                  <th data-field="Telefone">Telefone</th>
              </tr>
            </thead>
            <% if (!(quats.isEmpty())) { %>    
                <tbody>
                    <% for (Quarto quarto : quats) { %>
                        <tr>
                            <td><%=quarto.getHotel().getNomeHotel()%></td>
                            <td><%=quarto.getNumeroQuarto()%></td>
                            <td><%=quarto.getValorDiaria()%></td>
                            <td><%=quarto.getStatusQuarto()%></td>
                            <td><%=quarto.getTelefoneQuarto()%></td>
                            <td><a href="excluirQuarto.jsp?<%=url + quarto.getIdQuarto()%>">Excluir</a></td>
                            <td><a href="alterarQuarto.jsp?<%=url + quarto.getIdQuarto()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
