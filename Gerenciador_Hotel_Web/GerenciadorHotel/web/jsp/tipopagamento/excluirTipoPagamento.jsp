<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    TipoPagamento tip = new TipoPagamento(id,"");
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    tip = tipCont.excluirTipoPagamento(tip);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultaTipoPagamento.jsp?DESCRICAO=" + pbusca;
    response.sendRedirect(url);
%>