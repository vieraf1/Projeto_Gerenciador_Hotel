<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String ida = request.getParameter("IDADE");
    int idade = Integer.parseInt(ida);
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String telefone = request.getParameter("TELEFONE");
    String pbusca = request.getParameter("PBUSCA");
    
    Hospede hos = new Hospede(id,nome,idade,rg,cpf,telefone);
    HospedeControl hosCont = new HospedeControl();
    hos = hosCont.alterarHospede(hos);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarHospede.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
