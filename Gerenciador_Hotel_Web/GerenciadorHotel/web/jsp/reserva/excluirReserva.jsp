<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Reserva"%>
<%@page import="gerenciadorhotel.control.ReservaControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Date a = null;
    Date b = null;
    
    Reserva res = new Reserva(id,0,0,0,0,0,a,b,0);
    ReservaControl resCont = new ReservaControl();
    res = resCont.excluirReserva(res);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "consultarReserva.jsp";
    response.sendRedirect(url);

%>
