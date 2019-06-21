<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Tipo Pagamento</title>
    </head>
    <body>
        <div class="container"/>
       <h1>Consultar Tipo Pagamento</h1>
       <form name="consultarTipoPagamento" action="validaConsultaTipoPagamento.jsp" method="post">
           Descrição do Pagamento <input type="text" name ="DESCRICAO" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
