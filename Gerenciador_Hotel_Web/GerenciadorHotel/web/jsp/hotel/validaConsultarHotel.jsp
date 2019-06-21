<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>

<%
    String nome = request.getParameter("NOME");
    Hotel hot = new Hotel(0,nome,"","","");
    HotelControl hotCont = new HotelControl();
    List<Hotel> hots = hotCont.ListaHotel(hot);
    Funcionario funcLogado = (Funcionario) session.getAttribute("FuncionarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<!DOCTYPE html>
<html>
     <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Hotéis</title>
    </head>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Cnpj">Cnpj</th>
                  <th data-field="Telefone">Telefone</th>
                  <th data-field="Endereco">Endereço</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
             <% if (!(hots.isEmpty())) { %>   
                <tbody>
                    <% for (Hotel listaHotel : hots) { %>
                      <tr>
                            <td><%=listaHotel.getNomeHotel()%></td>
                            <td><%=listaHotel.getCnpjHotel()%></td>
                            <td><%=listaHotel.getTelefoneHotel()%></td>
                            <td><%=listaHotel.getEnderecoHotel()%></td>
                            <td><a href="excluirHotel.jsp?<%=url + listaHotel.getIdHotel()%>">Excluir</a></td>
                            <td><a href="alterarHotel.jsp?<%=url + listaHotel.getIdHotel()%>">Alterar</a></td>
                      </tr>
                    <% } %>
                </tbody>
             <% } %>
        </table>
    </body>
</html>
