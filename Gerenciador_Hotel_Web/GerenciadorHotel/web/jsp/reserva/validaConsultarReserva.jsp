<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.bean.Reserva"%>
<%@page import="gerenciadorhotel.control.ReservaControl"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    float numero = Float.parseFloat(request.getParameter("VALOR"));
    
    Date a = null;
    Date b = null;
    
    Reserva res = new Reserva(0,0,0,0,0,0,a,b,numero);
    ReservaControl resCont = new ReservaControl();
    List<Reserva> ress = resCont.ListaQuarto(res);
        
    Funcionario funcLogado = (Funcionario) session.getAttribute("FuncionarioLogado");
    String url = "PBUSCA=" + res.getValorTotal() +"&ID=" ;
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Reserva</title>
    </head>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="NomeHotel">Hotel</th>
                  <th data-field="NumeroQuarto">Número do Quarto</th>
                  <th data-field="NomeHospede">Hospede</th>
                  <th data-field="Descricao">Tipo de Pagamento</th>
                  <th data-field="NomeFuncionario">Funcionario que fez a Reserva</th>
                  <th data-field="Inicio">Data Inicio</th>
                  <th data-field="Fim">Data Fim</th>
                  <th data-field="Valor">Valor Total da Reserva</th>
              </tr>
            </thead>
            <% if (!(ress.isEmpty())) { %>    
                <tbody>
                    <% for (Reserva reserva : ress) { %>
                        <tr>
                            <td><%=reserva.getHotel().getNomeHotel()%></td>
                            <td><%=reserva.getQuarto().getNumeroQuarto()%></td>
                            <td><%=reserva.getHospede().getNomeHospede()%></td>
                            <td><%=reserva.getTipoPagamento().getDescricaoTipoPagamento()%></td>
                            <td><%=reserva.getFuncionario().getNomeFuncionario()%></td>
                            <td><%=reserva.getDataInicio()%></td>
                            <td><%=reserva.getDataFim()%></td>
                            <td><%=reserva.getValorTotal()%></td>
                            <td><a href="excluirReserva.jsp?<%=url + reserva.getIdReserva()%>">Excluir</a></td>
                            <td><a href="alterarReserva.jsp?<%=url + reserva.getIdReserva()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
