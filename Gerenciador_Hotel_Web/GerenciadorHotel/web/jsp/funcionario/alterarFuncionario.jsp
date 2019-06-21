<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Funcionario func = new Funcionario(id,0,"","","",0,"","","","");
    FuncionarioControl funcCont = new FuncionarioControl();
    func = funcCont.buscarFuncionario(func);
    
    Hotel hotEnt = new Hotel(0,"","","","");
    HotelControl hotCont = new HotelControl();
    List<Hotel> hots = hotCont.ListaHotel(hotEnt);
    
    String pbusca = request.getParameter("PBUSCA");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Funcionários</title>
    </head>
    <body>
        <div class="container">
       <h1>Alterar Funcionários</h1>
        <form name="alterarFuncionario" action="validaAlterarFuncionario.jsp" method="post">
            <table>
                <tr>
                    <td>Hotel:</td>
                        <td>
                            <select NAME="ID_Hotel" class="browser-default">
                                <% for (Hotel hot : hots) { %>
                                    <% if( hot.getIdHotel() == func.getIdHotel() ) { %>
                                        <option selected value="<%=hot.getIdHotel()%>"><%=hot.getNomeHotel()%></option>
                                    <% } else { %>
                                        <option value="<%=hot.getIdHotel()%>"><%=hot.getNomeHotel()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Login:</td>
                        <td><input type="text" name="Login" value="<%=func.getLogin()%>"></td>
                </tr>
                <tr>
                        <td>Senha:</td>
                        <td><input type="text" name="Senha" value="<%=func.getSenha()%>"></td>
                </tr>
                <tr>
                        <td>Nome:</td>
                        <td><input type="text" name="Nome" value="<%=func.getNomeFuncionario()%>"></td>
                </tr>
                <tr>
                        <td>Idade:</td>
                        <td><input type="text" name="Idade" value="<%=func.getIdadeFuncionario()%>"></td>
                </tr>
                <tr>
                        <td>RG:</td>
                        <td><input type="text" name="RG" value="<%=func.getRgFuncionario()%>"></td>
                </tr>
                <tr>
                        <td>CPF:</td>
                        <td><input type="text" name="CPF" value="<%=func.getCpfFuncionario()%>"></td>
                </tr>
                <tr>
                        <td>CTPS:</td>
                        <td><input type="text" name="CTPS" value="<%=func.getCtpsFuncionario()%>"></td>
                </tr>
                <tr>
                        <td>Telefone:</td>
                        <td><input type="text" name="Telefone" value="<%=func.getTelefoneFuncionario()%>"></td>
                </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=func.getIdFuncionario()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
