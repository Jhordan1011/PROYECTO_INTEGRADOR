<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombreDocente = request.getParameter("nombre");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Panel del Docente</title>
    <link rel="stylesheet" href="Estilos/E_Mae_Sec.css">
</head>
<body>
    <div class="contenedor">
        <h2>Instituto de Educación Superior Tecnológico Público Innovatech Arequipa</h2>
        <h3>Bienvenido docente: <%= nombreDocente != null ? nombreDocente : "Nombre" %></h3>
        <p>¿Qué desea hacer hoy?</p>

        <div class="botones">
            <button onclick="location.href='Maestro_Notas.jsp'">Notas</button>
            <button onclick="location.href='Maestro_Registro.jsp'">Registro</button>
            <button onclick="location.href='Maestro_Reportes.jsp'">Reporte</button>
            <button onclick="location.href='Maestro_Asistencia.jsp'">Asistencia</button>
        </div>
    </div>
</body>
</html>