<%-- 
    Document   : inventario
    Created on : 12 may. 2024, 19:42:16
    Author     : Valeriy
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Inventario"%>
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
                <form action="SvInventario" method="GET">
                    <div class="Locales">
                        <li><button type="submit" name="Local" value="Surco">SEDE SURCO</button>
                        </li>
                        <li><button type="submit" name="Local" value="Lurin">SEDE LURIN</button>
                        </li>
                        <li><button type="submit" name="Local">CERRAR SESIÓN</button>
                        </li>
                    </div>
                </form>
            </ul> 
        </nav>
    </section>

    <section class="doble">
        <section class="containerTabla">
            <table class="Tabla">
                <thead class="TablaCabecera">
                    <tr>
                        <td>Código del Producto
                        </td>
                        <td>Imagen
                        </td>
                        <td>Nombre del Producto
                        </td>
                        <td>Volumen
                        </td>
                        <td>Precio de Venta
                        </td>
                        <td>Cantidad
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Inventario> listaInventario = (List) request.getSession().getAttribute("listaInventario");
                        for (Inventario Inv : listaInventario) {
                    %>
                        <tr>
                            <td><%= Inv.getCodigo() %></td>
                            <td><img src="imgs/Productos/<%= Inv.getCodigo()%>.jpg" width="50%"></td>
                            <td><%= Inv.getNombre() %></td>
                            <td><%= Inv.getVolumen() %></td>
                            <td><%= Inv.getPrecio() %></td>
                            <td><%= Inv.getCantidad() %></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </section>

        <section class="containerBotonesTabla">
            <button type="button">Inventario</button>
            <form action="SvKardex" method="GET">
                <button type="submit">Kardex</button>
            </form>
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
