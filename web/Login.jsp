<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenida - Innovatech Arequipa</title>
        <link rel="stylesheet" href="Estilos/Login.css">
        <script>

            function irAInicio() {
                window.location.href = "Inicio.jsp";
            }
        </script>
    </head>
    <body>
        <div class="container">
            <h1>Instituto de Educación Superior Tecnológico Público Innovatech Arequipa</h1>
            <img src="Imagenes/Logo.png" alt="Descripción de la imagen" class="content-image">
            <button class="continue-button" onclick="irAInicio()">Continuar</button>
        </div>
    </body>
</html>