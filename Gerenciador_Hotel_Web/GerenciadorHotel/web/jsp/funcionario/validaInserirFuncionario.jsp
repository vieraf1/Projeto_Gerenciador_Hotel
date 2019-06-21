<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    int idHotel = Integer.parseInt(request.getParameter("ID_HOTEL"));
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String nome = request.getParameter("NOME");
    int idade = Integer.parseInt(request.getParameter("IDADE"));
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String ctps = request.getParameter("CTPS");
    String telefone = request.getParameter("TELEFONE");
    
    Funcionario func = new Funcionario(0,idHotel,login,senha,nome,idade,rg,cpf,ctps,telefone);
    FuncionarioControl funcCont = new FuncionarioControl();
    func = funcCont.inserirFuncionario(func);
    
    String url = "../contacess/menu.jsp";
    response.sendRedirect(url);

%>
