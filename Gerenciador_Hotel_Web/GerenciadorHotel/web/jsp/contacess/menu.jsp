<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Funcionario func = new Funcionario(0,login,senha);
    FuncionarioControl funcCont = new FuncionarioControl();
    func = funcCont.validarLogin(func);
    session.setAttribute("FuncionarioLogado",func);
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>Gerenciador de Hotéis </title>
    <body>

            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Hoteis</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Quartos</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Funcionários</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Tipo Pagamento</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Hospede</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>Reservas</a> 


                <!-- Dropdown1 - Hotéis -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../hotel/inserirHotel.jsp"> Inserir Hotel </a></li>
                    <li><a href="../hotel/consultarHotel.jsp"> Consultar Hotéis </a></li>
                </ul>
          
                <!-- Dropdown2 - Quartos -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../quarto/inserirQuarto.jsp"> Inserir Quartos </a></li>
                    <li><a href="../quarto/consultarQuarto.jsp"> Consultar Quartos </a></li>
                </ul>
            
                <!-- Dropdown3 - Funcionários -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../funcionario/inserirFuncionario.jsp"> Inserir Funcionário </a></li>
                    <li><a href="../funcionario/consultarFuncionario.jsp"> Consultar Funcionário </a></li>
                </ul>
                
                <!-- Dropdown4 - Tipo Pagamento -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../tipopagamento/inserirTipoPagamento.jsp"> Inserir Tipo Pagamento </a></li>
                    <li><a href="../tipopagamento/consultaTipoPagamento.jsp"> Consultar Tipo Pagamento </a></li>
                </ul>
                
                <!-- Dropdown5 - Hospedes -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../hospede/inserirHospede.jsp"> Inserir Hospede </a></li>
                    <li><a href="../hospede/consultarHospede.jsp"> Consultar Hospedes </a></li>
                </ul>
                
                <!-- Dropdown6 - Reservas -->
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../reserva/inserirReserva.jsp"> Inserir Reserva </a></li>
                    <li><a href="../reserva/consultarReserva.jsp"> Consultar Reservas </a></li>
                </ul>
    </body>
</html>