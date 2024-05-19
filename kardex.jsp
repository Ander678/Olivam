<%-- 
    Document   : kardex
    Created on : 15 may. 2024, 23:49:11
    Author     : Valeriy
--%>

<%@page import="modelo.Kardex"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aceites Olivam</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="imgs/logo.jpg" type="image/x-icon">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Raleway:wght@100;200;400;500;800;900&display=swap');
    </style>
</head>

<body>
    <section id="header">
        <a href="index.jsp"><img src="imgs/logo.jpg" alt="" class="logo"></a>

        <nav class="nav">
            <ul class="navbar">
                <li><a class="active" href="index.jsp">SEDE SURCO</a>
                </li>
                <li><a href="Kardex.jsp">SEDE LURIN</a>
                </li>
                <li><a href="Pedidos.jsp">SEDE UTOPIA SUR</a>
                </li>
            </ul>
        </nav>
    </section>

    <section class="doble">
        <section class="containerTabla">
            <table class="Tabla">
                <thead class="TablaCabecera">
                    <tr>
                        <td>Fecha Movimiento
                        </td>
                        <td>Articulo
                        </td>
                        <td>Descripcion del articulo
                        </td>
                        <td>Cantidad
                        </td>
                        <td>Tipo de Movimiento
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Kardex> listaKardex = (List) request.getSession().getAttribute("listaKardex");
                        for (Kardex kdx : listaKardex) {
                    %>
                        <tr>
                            <td><%= kdx.getFecha()%></td>
                            <td><%= kdx.getCodigo()%></td>
                            <td><%= kdx.getDescripcion()%></td>
                            <td><%= kdx.getMovimiento()%></td>
                            <td><%= kdx.getTipomovimiento()%></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </section>

        <section class="containerBotonesTabla">
            <button type="button" onclick="window.location.href='inventario.jsp'">Inventario</button>
            <button type="button" onclick="window.location.href='kardex.jsp'">Kardex</button>
            <button type="button" onclick="window.location.href='pedidos.jsp'">Pedidos</button>
        </section>

    </section>


    <footer>
        <ul>
            <li><a href="">Soporte Técnico</a></li>
            <li><a href="">Solicitar cambio de credenciales</a></li>
            <li><a href="">Manual de Usuario</a></li>
        </ul>
    </footer>

</body>

</html>