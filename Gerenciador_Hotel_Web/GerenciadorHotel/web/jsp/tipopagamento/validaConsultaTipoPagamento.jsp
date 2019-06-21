<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.control.TipoPagamentoControl"%>
<%@page import="gerenciadorhotel.bean.TipoPagamento"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>

<%
    String nome = request.getParameter("DESCRICAO");
    
    TipoPagamento tipEnt = new TipoPagamento(0,nome);
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    List<TipoPagamento> tips = tipCont.ListaTipoPagamento(tipEnt);
    
    Funcionario funcLogado = (Funcionario) session.getAttribute("FuncionarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<!DOCTYPE html>
<html>
     <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Tipos de Pagamento</title>
    </head>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Descricao">Descrição</th>
              </tr>
            </thead>
             <% if (!(tips.isEmpty())) { %>   
                <tbody>
                    <% for (TipoPagamento tip : tips) { %>
                      <tr>
                            <td><%=tip.getDescricaoTipoPagamento()%></td>
                            <td><a href="excluirTipoPagamento.jsp?<%=url + tip.getIdTipoPagamento()%>">Excluir</a></td>
                            <td><a href="alterarTipoPagamento.jsp?<%=url + tip.getIdTipoPagamento()%>">Alterar</a></td>
                      </tr>
                    <% } %>
                </tbody>
             <% } %>
        </table>
    </body>
</html>
