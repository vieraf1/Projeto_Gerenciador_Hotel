<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Hotel hot = new Hotel(id,"","","","");
    HotelControl hotCont = new HotelControl();
    hot = hotCont.excluirHotel(hot);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarHotel.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>