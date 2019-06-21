<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Funcionario"%>
<%@page import="gerenciadorhotel.control.FuncionarioControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Funcionario func = new Funcionario(id,0,"","","",0,"","","","");
    FuncionarioControl funcCont = new FuncionarioControl();
    func = funcCont.excluirFuncionario(func);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarFuncionario.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);

%>
