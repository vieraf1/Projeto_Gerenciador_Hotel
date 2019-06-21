<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String cnpj = request.getParameter("CNPJ");
    String telefone = request.getParameter("TELEFONE");
    String endereco = request.getParameter("ENDERECO");
    String pbusca = request.getParameter("PBUSCA");
    
    Hotel hot = new Hotel(id,nome,cnpj,telefone,endereco);
    HotelControl hotCont = new HotelControl();
    hot = hotCont.alterarHotel(hot);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarHotel.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
