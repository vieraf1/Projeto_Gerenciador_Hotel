<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idHotel = Integer.parseInt(request.getParameter("ID_Hotel"));
    int numero = Integer.parseInt(request.getParameter("Numero"));
    float valor = Float.parseFloat(request.getParameter("Valor"));
    int status = Integer.parseInt(request.getParameter("Status"));
    String telefone = request.getParameter("Telefone");
    String pbusca = request.getParameter("PBUSCA");
    
    Quarto qua = new Quarto(id,idHotel,numero,valor,status,telefone);
    QuartoControl quaCont = new QuartoControl();
    qua = quaCont.alterarQuarto(qua);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarQuarto.jsp?TELEFONE=" + pbusca;
    response.sendRedirect(url);
%>  