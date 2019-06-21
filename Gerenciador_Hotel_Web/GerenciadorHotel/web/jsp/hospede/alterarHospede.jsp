<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hospede"%>
<%@page import="gerenciadorhotel.control.HospedeControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Hospede hos = new Hospede(id,"",0,"","","");
    HospedeControl hosCont = new HospedeControl();
    hos = hosCont.buscarHospede(hos);
    
    String pbusca = request.getParameter("PBUSCA");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Hospedes</title>
    </head>
    <body>
        <div class="container"/>
        <h1>Alterar Hospedes</h1>
        <form name="alterarHotel" action="validaAlterarHospede.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=hos.getNomeHospede()%>"> <br>
            Idade: <input type="text" name="IDADE" value="<%=hos.getIdadeHospede()%>"> <br>
            RG: <input type="text" name="RG" value="<%=hos.getRgHospede()%>"> <br>
            CPF: <input type="text" name="CPF" value="<%=hos.getCpfHospede()%>"> <br>
            Telefone: <input type="text" name="TELEFONE" value="<%=hos.getTelefoneHospede()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=hos.getIdHospede()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
