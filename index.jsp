<%-- 
    Document   : index
    Created on : 12 may. 2024, 19:38:26
    Author     : Valeriy
--%>

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
    <section class="home">
        <div class="login">
            <form action="SvIniciarSesion" method="POST">
                <h2>INICIAR SESIÓN</h2>
                <label for="">Correo Electrónico</label>
                <input type="text" name="correo" placeholder="usuario@olivam.com">
                <label for="">Contraseña</label>
                <input type="password" name="contrasena" placeholder="********">
                <div class="recordar">
                    <input type="checkbox">
                    <label for="">Recordar contraseña para este dispositivo</label>
                </div>
        
                <button type="submit">Ingresar</button>
            </form>
            <a href=""><span>¿Olvidaste tu contraseña?</span> Solicitar cambio</a>
        </div>

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