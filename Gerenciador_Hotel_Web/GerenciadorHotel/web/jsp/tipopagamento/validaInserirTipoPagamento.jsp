<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>

<%
    String nome = request.getParameter("DESCRICAO");
    
    TipoPagamento tip = new TipoPagamento(0,nome);
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    tipCont.inserirTipoPagamento(tip);

    String url = "../contacess/menu.jsp";
    response.sendRedirect(url);
%>