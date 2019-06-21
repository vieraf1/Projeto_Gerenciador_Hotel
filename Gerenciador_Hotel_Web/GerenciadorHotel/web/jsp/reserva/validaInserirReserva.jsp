<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Reserva"%>
<%@page import="gerenciadorhotel.control.ReservaControl"%>

<%
    int idHotel = Integer.parseInt(request.getParameter("ID_HOTEL"));
    int idQuarto = Integer.parseInt(request.getParameter("ID_QUARTO"));
    int idHospede = Integer.parseInt(request.getParameter("ID_HOSPEDE"));
    int idTipoPagamento = Integer.parseInt(request.getParameter("ID_PAGAMENTO"));
    Date Inicio = Date.valueOf(request.getParameter("INICIO"));
    Date Fim = Date.valueOf(request.getParameter("FIM"));
    float valor = Float.parseFloat(request.getParameter("VALOR"));
    int idFuncionario = Integer.parseInt(request.getParameter("ID_FUNCIONARIO"));
    
    Reserva res = new Reserva(0,idHotel,idQuarto,idHospede,idTipoPagamento,idFuncionario,Inicio,Fim,valor);
    ReservaControl resCont = new ReservaControl();
    res = resCont.inserirReserva(res);
    
    String url = "../contacess/menu.jsp";
    response.sendRedirect(url);

%>
