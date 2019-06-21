<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Tipo Pagamento</title>
    </head>
    <body>
        <div class="container">
        <h1>Inserir TipoPagamento</h1>
        <form name="inserirTipoPagamento" action="validaInserirTipoPagamento.jsp" method="post">
            Descrição do Pagamento: <input type="text" name="DESCRICAO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
