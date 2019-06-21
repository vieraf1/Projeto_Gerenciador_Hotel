<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Hotel</title>
    </head>
    <body>
        <div class="container">
        <h1>Inserir Hotel</h1>
        <form name="inserirHotel" action="validaInserirHotel.jsp" method="post">
            Nome do Hotel: <input type="text" name="NOME" value=""> <br>
            CNPJ do Hotel: <input type="text" name="CNPJ" value=""> <br>
            Telefone do Hotel: <input type="text" name="TELEFONE" value=""> <br>
            Endereço do Hotel: <input type="text" name="ENDERECO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
