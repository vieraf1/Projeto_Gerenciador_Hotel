<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Hospedes</title>
    </head>
    <body>
        <div class="container"/>
       <h1>Consultar Hospedes</h1>
       <form name="consultarHospede" action="validaConsultarHospede.jsp" method="post">
           Nome do Hospede <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
