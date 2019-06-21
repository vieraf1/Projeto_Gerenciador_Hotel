<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
      Hotel hot = new Hotel(0,"","","","");
      HotelControl hotCont = new HotelControl();
      List<Hotel> hots = hotCont.ListaHotel(hot);
      
      Quarto qua = new Quarto(0,0,0,0,0,"");
      QuartoControl quaCont = new QuartoControl();
      List<Quarto> quas = quaCont.ListaQuarto(qua);
      
      Hospede hos = new Hospede(0,"",0,"","","");
      HospedeControl hosCont = new HospedeControl();
      List<Hospede> hoss = hosCont.ListaHospede(hos);
      
      TipoPagamento tip = new TipoPagamento(0,"");
      TipoPagamentoControl tipCont = new TipoPagamentoControl();
      List<TipoPagamento> tips = tipCont.ListaTipoPagamento(tip);
      
      Funcionario func = new Funcionario(0,0,"","","",0,"","","","");
      FuncionarioControl funCont = new FuncionarioControl();
      List<Funcionario> fucs = funCont.ListaFuncionario(func);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>Inserir Reserva</title>
    </head>
    <body>
        <div class="container">
        <h2>Inserir Reserva</h2>
            <form name="inserirReserva" action="validaInserirReserva.jsp" method="post">
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
                        <td>Quarto:</td>
                        <td>
                            <select name="ID_QUARTO" class="browser-default">
                                <% for (Quarto quaa : quas) { %>
                                    <option value="<%=quaa.getIdQuarto()%>"><%=quaa.getNumeroQuarto()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Hospede:</td>
                        <td>
                            <select name="ID_HOSPEDE" class="browser-default">
                                <% for (Hospede hosp : hoss) { %>
                                    <option value="<%=hosp.getIdHospede()%>"><%=hosp.getNomeHospede()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Tipo de Pagamento:</td>
                        <td>
                            <select name="ID_PAGAMENTO" class="browser-default">
                                <% for (TipoPagamento tipp : tips) { %>
                                    <option value="<%=tipp.getIdTipoPagamento()%>"><%=tipp.getDescricaoTipoPagamento()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Funcionario:</td>
                        <td>
                            <select name="ID_FUNCIONARIO" class="browser-default">
                                <% for (Funcionario funcc : fucs) { %>
                                    <option value="<%=funcc.getIdFuncionario()%>"><%=funcc.getNomeFuncionario()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Data de Inicio:</td>
                        <td><input type="date" name="INICIO" value=""></td>
                    </tr>
                    <tr>
                        <td>Data do Fim:</td>
                        <td><input type="date" name="FIM" value=""></td>
                    </tr>
                    <tr>
                        <td>Valor Total:</td>
                        <td><input type="text" name="VALOR" value=""></td>
                    </tr>
                </table>
                <input type="submit" name="Enviar" value="OK">
            </form>
        </div>  
    </body>
</html>
