<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login - Innovatech Arequipa</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Tu estilo personalizado -->
    <link rel="stylesheet" href="Estilos/Inicio.css">
</head>
<body>
    <div class="inicio-container">
        <h1>Instituto de Educación Superior Tecnológico Público Innovatech Arequipa</h1>
        <img src="Imagenes/Logo.png" alt="Logo Institucional" class="logo-img">

        <form method="post" action="login">
            <div class="form-group">
                <label for="codigo">Ingrese Código:</label>
                <input type="text" id="codigo" name="codigo" placeholder="Código" required>
            </div>

            <div class="form-group">
                <label for="contrasena">Ingrese Contraseña:</label>
                <input type="password" id="contrasena" name="contrasena" placeholder="Contraseña" required>
            </div>

            <div class="radio-group">
                <input type="radio" id="alumno" name="rol" value="alumno" required>
                <label for="alumno">Alumno</label>

                <input type="radio" id="docente" name="rol" value="docente" required>
                <label for="docente">Docente</label>
            </div>

            <button type="submit" class="continue-button">Continuar</button>
        </form>

        <% String error = request.getParameter("error");
           if ("1".equals(error)) {
        %>
        <div class="error-msg">Código, contraseña o rol incorrectos. Inténtalo de nuevo.</div>
        <% } %>
    </div>
</body>
</html>


