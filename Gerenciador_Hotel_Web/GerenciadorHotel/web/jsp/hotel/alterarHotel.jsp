<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="gerenciadorhotel.bean.Hotel"%>
<%@page import="gerenciadorhotel.control.HotelControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    
    Hotel hot = new Hotel(id,"","","","");
    HotelControl hotCont = new HotelControl();
    hot = hotCont.buscarHotel(hot);
    
    String pbusca = request.getParameter("PBUSCA");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Hotéis</title>
    </head>
    <body>
        <div class="container"/>
        <h1>Alterar Hotéis</h1>
        <form name="alterarHotel" action="validaAlterarHotel.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=hot.getNomeHotel()%>"> <br>
            Cnpj: <input type="text" name="CNPJ" value="<%=hot.getCnpjHotel()%>"> <br>
            Telefone: <input type="text" name="TELEFONE" value="<%=hot.getTelefoneHotel()%>"> <br>
            Endereco: <input type="text" name="ENDERECO" value="<%=hot.getEnderecoHotel()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=hot.getIdHotel()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
