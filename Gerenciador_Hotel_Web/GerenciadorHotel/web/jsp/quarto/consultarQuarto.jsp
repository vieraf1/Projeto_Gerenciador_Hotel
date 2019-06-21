<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Quarto</title>
    </head>
    <body>
       <div class="container">
       <h1>Consultar Quarto</h1>
       <form name="consultarQuarto" action="validaConsultarQuarto.jsp" method="post">
           Telefone do Quarto: <input type="text" name ="TELEFONE" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>