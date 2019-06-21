<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>

<%
    String pbusca = request.getParameter("PBUSCA");
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("DESCRICAO");
    
    TipoPagamento tip = new TipoPagamento(id,nome);
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    tip = tipCont.alterarTipoPagamento(tip);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultaTipoPagamento.jsp?DESCRICAO=" + pbusca;
    response.sendRedirect(url);
%>
