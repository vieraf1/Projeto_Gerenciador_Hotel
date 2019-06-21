<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Reserva"%>
<%@page import="gerenciadorhotel.control.ReservaControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    int idHotel = Integer.parseInt(request.getParameter("ID_Hotel"));
    int idQuarto = Integer.parseInt(request.getParameter("ID_Quarto"));
    int idHospede = Integer.parseInt(request.getParameter("ID_Hospede"));
    int idTipoPagamento = Integer.parseInt(request.getParameter("ID_Pagamento"));
    Date Inicio = Date.valueOf(request.getParameter("Inicio"));
    Date Fim = Date.valueOf(request.getParameter("Fim"));
    float valor = Float.parseFloat(request.getParameter("Valor"));
    int idFuncionario = Integer.parseInt(request.getParameter("ID_Funcionario"));
    String pbusca = request.getParameter("PBUSCA");
    
    Reserva res = new Reserva(id,idHotel,idQuarto,idHospede,idTipoPagamento,idFuncionario,Inicio,Fim,valor);
    ReservaControl resCont = new ReservaControl();
    res = resCont.alterarReserva(res);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "consultarReserva.jsp";
    response.sendRedirect(url);
%>  