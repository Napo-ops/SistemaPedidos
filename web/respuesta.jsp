<%-- 
    Document   : respuesta
    Created on : 09/07/2020, 08:42:16 PM
    Author     : AN7
--%>
<%
    Double monto = (Double) request.getAttribute("totalapagarjsp");
    String nombreUsuario = (String) request.getAttribute("nombreUsuario");
    String producto = (String) request.getAttribute("producto");
    String cantidad = (String)  request.getAttribute("cantidad");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stylesTotal.css">
        <title>Total a pagar</title>
    </head>
    <body>
        <header>
            <img src="images/dinero.jpg" width="100" height="100" alt="icon"/>
        </header>
        <section>
            <form action="DescargarExcel">
                <h1>Total a pagar</h1>
                <%=monto%>
                <%=nombreUsuario%>
                <%=producto%>
                <%=cantidad%>

                <input type="hidden" name="nombreUsuario" value="<%=nombreUsuario%>">
                <input type="hidden" name="valortotal" value="<%=monto%>">
                <input type="hidden" name="producto" value="<%=producto%>">
                <input type="hidden" name="cantidad" value="<%=cantidad%>">
                <input type="submit" value="DescargarExcel">
            </form>
        </section>

        <header>
            <p>Diseñado por an7</p>
        </header>

    </body>
</html>
