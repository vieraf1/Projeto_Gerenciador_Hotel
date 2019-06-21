<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>

<%
    int idHotel = Integer.parseInt(request.getParameter("ID_HOTEL"));
    int numero = Integer.parseInt(request.getParameter("NUMERO_QUARTO"));
    float valor = Float.parseFloat(request.getParameter("VALOR"));
    int status = Integer.parseInt(request.getParameter("STATUS"));
    String telefone = request.getParameter("TELEFONE");
    
    Quarto qua = new Quarto(0,idHotel,numero,valor,status,telefone);
    QuartoControl quaCont = new QuartoControl();
    qua = quaCont.inserirQuarto(qua);
    
    String url = "../contacess/menu.jsp";
    response.sendRedirect(url);

%>
