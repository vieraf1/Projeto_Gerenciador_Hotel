<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    TipoPagamento tip = new TipoPagamento(id,"");
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    tip = tipCont.buscarTipoPagamento(tip);
    
    String pbusca = request.getParameter("PBUSCA");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Tipo Pagamento</title>
    </head>
    <body>
        <div class="container"/>
        <h1>Alterar Tipo Pagamento</h1>
        <form name="alterarHotel" action="validaAlterarTipoPagamento.jsp" method="post">
            Descrição: <input type="text" name="DESCRICAO" value="<%=tip.getDescricaoTipoPagamento()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=tip.getIdTipoPagamento()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
