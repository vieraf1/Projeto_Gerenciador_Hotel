<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>

<%
    String nome = request.getParameter("NOME");
    
    Hospede hos = new Hospede(0,nome,0,"","","");
    HospedeControl hosCont = new HospedeControl();
    List<Hospede> hoss = hosCont.ListaHospede(hos);
    
    Funcionario funcLogado = (Funcionario) session.getAttribute("FuncionarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<!DOCTYPE html>
<html>
     <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Hospedes</title>
    </head>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Idade">Idade</th>
                  <th data-field="Rg">RG</th>
                  <th data-field="Cpf">CPF</th>
                  <th data-field="Telefone">Telefone</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
             <% if (!(hoss.isEmpty())) { %>   
                <tbody>
                    <% for (Hospede listaHospede : hoss) { %>
                      <tr>
                            <td><%=listaHospede.getNomeHospede()%></td>
                            <td><%=listaHospede.getIdadeHospede()%></td>
                            <td><%=listaHospede.getRgHospede()%></td>
                            <td><%=listaHospede.getCpfHospede()%></td>
                            <td><%=listaHospede.getTelefoneHospede()%></td>
                            <td><a href="excluirHospede.jsp?<%=url + listaHospede.getIdHospede()%>">Excluir</a></td>
                            <td><a href="alterarHospede.jsp?<%=url + listaHospede.getIdHospede()%>">Alterar</a></td>
                      </tr>
                    <% } %>
                </tbody>
             <% } %>
        </table>
    </body>
</html>
