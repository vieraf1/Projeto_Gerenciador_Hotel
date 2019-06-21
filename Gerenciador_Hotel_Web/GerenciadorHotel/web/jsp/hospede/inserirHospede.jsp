<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Hospede</title>
    </head>
    <body>
        <div class="container">
        <h1>Inserir Hospede</h1>
        <form name="inserirHotel" action="validaInserirHospede.jsp" method="post">
            Nome do Hospede: <input type="text" name="NOME" value=""> <br>
            Idade do Hospede: <input type="text" name="IDADE" value=""> <br>
            RG do Hospede: <input type="text" name="RG" value=""> <br>
            CPF do Hospede: <input type="text" name="CPF" value=""> <br>
            Telefone do Hospede: <input type="text" name="TELEFONE" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
