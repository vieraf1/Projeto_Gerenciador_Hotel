<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idHotel = Integer.parseInt(request.getParameter("ID_Hotel"));
    String login = request.getParameter("Login");
    String senha = request.getParameter("Senha");
    String nome = request.getParameter("Nome");
    int idade = Integer.parseInt(request.getParameter("Idade"));
    String rg = request.getParameter("RG");
    String cpf = request.getParameter("CPF");
    String ctps = request.getParameter("CTPS");
    String telefone = request.getParameter("Telefone");
    String pbusca = request.getParameter("PBUSCA");
    
    Funcionario func = new Funcionario(id,idHotel,login,senha,nome,idade,rg,cpf,ctps,telefone);
    FuncionarioControl funcCont = new FuncionarioControl();
    func = funcCont.alterarFuncionario(func);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarFuncionario.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>  