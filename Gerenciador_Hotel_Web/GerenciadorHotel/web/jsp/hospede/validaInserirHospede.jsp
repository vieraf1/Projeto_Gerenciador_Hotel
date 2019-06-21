<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>

<%
    String nome = request.getParameter("NOME");
    String ida = request.getParameter("IDADE");
    int idade = Integer.parseInt(ida);
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String telefone = request.getParameter("TELEFONE");
   
    Hospede hos = new Hospede(0,nome,idade,rg,cpf,telefone);
    HospedeControl hosCont = new HospedeControl();
    hosCont.inserirHospede(hos);

    String url = "../contacess/menu.jsp";
    response.sendRedirect(url);
%>
