<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
    String nome = request.getParameter("NOME");
    String cnpj = request.getParameter("CNPJ");
    String telefone = request.getParameter("TELEFONE");
    String endereco = request.getParameter("ENDERECO");
 
    Hotel hot = new Hotel(0,nome,cnpj,telefone,endereco);
    HotelControl hotCont = new HotelControl();
    hotCont.inserirHotel(hot); 

    String url = "../contacess/menu.jsp";
    response.sendRedirect(url);
%>
