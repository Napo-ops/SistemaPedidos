<%-- 
    Document   : principal
    Created on : 09/07/2020, 08:41:53 PM
    Author     : AN7
--%>
<%
    //Segundo para recibir con get 
    String nombreUsuario = (String) request.getAttribute("nombreUsuario");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/stylesRegister.css">
    </head>
    <body>
        <header>
            <h1>Bienvenido a la Pagina Principal</h1> 
        </header>

        <section>
            <form action="ValidarPromocion">
                <!--Enviamos al servlet-->
                <input  type="hidden" name="nombreUsuario" value="<%=nombreUsuario%>" >
                <input type="text" name="caja1" placeholder="Ingrese producto">

                <input type="text" name="caja2" placeholder="Ingrese cantidad">

                <input type="text" name="caja3" placeholder="Ingrese Codigo">

                <input  type="submit" value="Enviar" >
            </form>
        </section>

    </body>

    <footer>
        <p>Diseñado por an7</p>
    </footer>
</html>
