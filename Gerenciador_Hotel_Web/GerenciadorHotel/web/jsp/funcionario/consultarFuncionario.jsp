<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Funcionário</title>
    </head>
    <body>
       <div class="container">
       <h1>Consultar Funcionário</h1>
       <form name="consultarFuncionario" action="validaConsultarFuncionario.jsp" method="post">
           Login: <input type="text" name ="LOGIN" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
