<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
    String login = request.getParameter("LOGIN");
    
    Funcionario func = new Funcionario(0,0,login,"","",0,"","","","");
    FuncionarioControl funcCont = new FuncionarioControl();
    List<Funcionario> funcs = funcCont.ListaFuncionario(func);
        
    Funcionario funcLogado = (Funcionario) session.getAttribute("FuncionarioLogado");
    String url = "PBUSCA=" + func.getLogin() +"&ID=" ;
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Funcionários</title>
    </head>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="NomeHotel">Hotel</th>
                  <th data-field="Login">Login</th>
                  <th data-field="Senha">Senha</th>
                  <th data-field="NomeFuncionario">Nome</th>
                  <th data-field="Idade">Idade</th>
                  <th data-field="RG">RG</th>
                  <th data-field="CPF">CPF</th>
                  <th data-field="CTPS">CTPS</th>
                  <th data-field="Telefone">Telefone</th>
              </tr>
            </thead>
            <% if (!(funcs.isEmpty())) { %>    
                <tbody>
                    <% for (Funcionario funcionario : funcs) { %>
                        <tr>
                            <td><%=funcionario.getHotel().getNomeHotel()%></td>
                            <td><%=funcionario.getLogin()%></td>
                            <td><%=funcionario.getSenha()%></td>
                            <td><%=funcionario.getNomeFuncionario()%></td>
                            <td><%=funcionario.getIdadeFuncionario()%></td>
                            <td><%=funcionario.getRgFuncionario()%></td>
                            <td><%=funcionario.getCpfFuncionario()%></td>
                            <td><%=funcionario.getCtpsFuncionario()%></td>
                            <td><%=funcionario.getTelefoneFuncionario()%></td>
                            <td><a href="excluirFuncionario.jsp?<%=url + funcionario.getIdFuncionario()%>">Excluir</a></td>
                            <td><a href="alterarFuncionario.jsp?<%=url + funcionario.getIdFuncionario()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>