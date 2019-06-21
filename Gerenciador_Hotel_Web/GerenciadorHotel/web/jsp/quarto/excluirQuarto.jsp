<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Quarto"%>
<%@page import="gerenciadorhotel.control.QuartoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Quarto qua = new Quarto(id,0,0,0,0,"");
    QuartoControl quaCont = new QuartoControl();
    qua = quaCont.excluirQuarto(qua);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarQuarto.jsp?TELEFONE=" + pbusca;
    response.sendRedirect(url);

%>
