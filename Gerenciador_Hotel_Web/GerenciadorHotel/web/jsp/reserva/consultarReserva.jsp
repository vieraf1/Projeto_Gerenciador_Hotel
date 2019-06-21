<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Reserva</title>
    </head>
    <body>
       <div class="container">
       <h1>Consultar Reserva</h1>
       <form name="consultarReserva" action="validaConsultarReserva.jsp" method="post">
           Valor Total da Reserva: <input type="text" name ="VALOR" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>