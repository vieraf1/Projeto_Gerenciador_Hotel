<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>
<%@page import="gerenciadorhotel.bean.Reserva"%>
<%@page import="gerenciadorhotel.control.ReservaControl"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Date a = null;
    Date b = null;
    
    Reserva res = new Reserva(id,0,0,0,0,0,a,b,0);
    ReservaControl resCont = new ReservaControl();
    res = resCont.buscarReserva(res);
    
    Hotel hotEnt = new Hotel(0,"","","","");
    HotelControl hotCont = new HotelControl();
    List<Hotel> hots = hotCont.ListaHotel(hotEnt);
    
      
    Quarto quaEnt = new Quarto(0,0,0,0,0,"");
    QuartoControl quaCont = new QuartoControl();
    List<Quarto> quas = quaCont.ListaQuarto(quaEnt);
      
    Hospede hosEnt = new Hospede(0,"",0,"","","");
    HospedeControl hosCont = new HospedeControl();
    List<Hospede> hoss = hosCont.ListaHospede(hosEnt);
      
    TipoPagamento tipEnt = new TipoPagamento(0,"");
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    List<TipoPagamento> tips = tipCont.ListaTipoPagamento(tipEnt);
      
    Funcionario funcEnt = new Funcionario(0,0,"","","",0,"","","","");
    FuncionarioControl funCont = new FuncionarioControl();
    List<Funcionario> fucs = funCont.ListaFuncionario(funcEnt);
    
    String pbusca = request.getParameter("PBUSCA");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Reservas</title>
    </head>
    <body>
        <div class="container">
       <h1>Alterar Reservas</h1>
        <form name="alterarReserva" action="validaAlterarReserva.jsp" method="post">
            <table>
                <tr>
                    <td>Hotel:</td>
                        <td>
                            <select NAME="ID_Hotel" class="browser-default">
                                <% for (Hotel hot : hots) { %>
                                    <% if( hot.getIdHotel() == res.getIdHotel() ) { %>
                                        <option selected value="<%=hot.getIdHotel()%>"><%=hot.getNomeHotel()%></option>
                                    <% } else { %>
                                        <option value="<%=hot.getIdHotel()%>"><%=hot.getNomeHotel()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                    <td>Quarto:</td>
                        <td>
                            <select NAME="ID_Quarto" class="browser-default">
                                <% for (Quarto qua : quas) { %>
                                    <% if( qua.getIdQuarto() == res.getIdQuarto() ) { %>
                                        <option selected value="<%=qua.getIdQuarto()%>"><%=qua.getNumeroQuarto()%></option>
                                    <% } else { %>
                                        <option value="<%=qua.getIdQuarto()%>"><%=qua.getNumeroQuarto()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                    <td>Hospede:</td>
                        <td>
                            <select NAME="ID_Hospede" class="browser-default">
                                <% for (Hospede hos : hoss) { %>
                                    <% if( hos.getIdHospede() == res.getIdHospede() ) { %>
                                        <option selected value="<%=hos.getIdHospede()%>"><%=hos.getNomeHospede()%></option>
                                    <% } else { %>
                                        <option value="<%=hos.getIdHospede()%>"><%=hos.getNomeHospede()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                    <td>Tipo Pagamento:</td>
                        <td>
                            <select NAME="ID_Pagamento" class="browser-default">
                                <% for (TipoPagamento tip : tips) { %>
                                    <% if( tip.getIdTipoPagamento() == res.getIdTipoPagamento() ) { %>
                                        <option selected value="<%=tip.getIdTipoPagamento()%>"><%=tip.getDescricaoTipoPagamento()%></option>
                                    <% } else { %>
                                        <option value="<%=tip.getIdTipoPagamento()%>"><%=tip.getDescricaoTipoPagamento()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                    <td>Funcionario:</td>
                        <td>
                            <select NAME="ID_Funcionario" class="browser-default">
                                <% for (Funcionario fun : fucs) { %>
                                    <% if( fun.getIdFuncionario() == res.getIdFuncionario() ) { %>
                                        <option selected value="<%=fun.getIdFuncionario()%>"><%=fun.getNomeFuncionario()%></option>
                                    <% } else { %>
                                        <option value="<%=fun.getIdFuncionario()%>"><%=fun.getNomeFuncionario()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Data Inicio:</td>
                        <td><input type="date" name="Inicio" value="<%=res.getDataInicio()%>"></td>
                </tr>
                <tr>
                        <td>Data Fim:</td>
                        <td><input type="date" name="Fim" value="<%=res.getDataFim()%>"></td>
                </tr>
                <tr>
                        <td>Valor Total:</td>
                        <td><input type="text" name="Valor" value="<%=res.getValorTotal()%>"></td>
                </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=res.getIdReserva()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
