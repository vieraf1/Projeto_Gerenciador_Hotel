<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Hospede hos = new Hospede(id,"",0,"","","");
    HospedeControl hosCont = new HospedeControl();
    hos = hosCont.excluirHospede(hos);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarHospede.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>