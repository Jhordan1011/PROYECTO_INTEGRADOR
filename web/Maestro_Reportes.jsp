<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Recupera el nombre del docente si se pasó como parámetro (ej. desde el login)
    // Asumiendo que el nombre del docente se pasa como un atributo de solicitud o sesión
    String nombreDocente = (String) request.getAttribute("nombreDocente");
    if (nombreDocente == null) {
        // Si no se pasó como atributo, intenta recuperarlo de un parámetro (menos seguro para info sensible)
        nombreDocente = request.getParameter("nombreDocente");
    }
    // Si aún no hay nombre, usa un valor por defecto
    String displayNombreDocente = (nombreDocente != null && !nombreDocente.isEmpty()) ? nombreDocente : "Docente";
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Reporte Docente - Innovatech Arequipa</title>
    <link rel="stylesheet" href="Estilos/E_Mae_Rep.css">
    <script>

        function volverATras() {
            window.history.back(); 

        }

        function generarExcel() {
            const curso = document.getElementById("curso").value;
.
            const alumno = document.querySelector(".student-info:nth-of-type(1)").textContent.trim();
            const notas = document.querySelector(".form-group:nth-of-type(3) .student-info").textContent.trim();
            const asistencia = document.querySelector(".form-group:nth-of-type(4) .student-info").textContent.trim();

            alert(`Simulando generación de reporte EXCEL para:\nCurso: ${curso}\nAlumno: ${alumno}\nNotas: ${notas}\nAsistencia: ${asistencia}\n\n¡La generación real requiere lógica de servidor!`);

        }

        function generarPdf() {
            const curso = document.getElementById("curso").value;
            // Recopila datos de manera similar al EXCEL
            const alumno = document.querySelector(".student-info:nth-of-type(1)").textContent.trim();
            const notas = document.querySelector(".form-group:nth-of-type(3) .student-info").textContent.trim();
            const asistencia = document.querySelector(".form-group:nth-of-type(4) .student-info").textContent.trim();

            alert(`Simulando generación de reporte PDF para:\nCurso: ${curso}\nAlumno: ${alumno}\nNotas: ${notas}\nAsistencia: ${asistencia}\n\n¡La generación real requiere lógica de servidor!`);

        document.addEventListener('DOMContentLoaded', () => {
            const docenteNamePlaceholder = document.querySelector(".welcome");

            docenteNamePlaceholder.textContent = `Bienvenido docente: <%= displayNombreDocente %>`;

        });
    </script>
</head>
<body>
    <h1>Instituto de Educación Superior Tecnológico Público Innovatech Arequipa</h1>
    <div class="welcome">Bienvenido docente: Introducir nombre</div> <div class="generate-report">Generar Reporte</div>

    <div class="form-container">
        <div class="form-group">
            <label for="curso">Curso:</label>
            <input type="text" id="curso" class="form-control" placeholder="Ej. Programación">
        </div>

        <div class="form-group">
            <label>Apellidos y nombres:</label>
            <div class="student-info">Contreras Delgado Jhordan Anthony</div>
        </div>

        <div class="form-group">
            <label>Notas:</label>
            <div class="student-info">15, 12, 18, 14 (Promedio: 14.75)</div> </div>

        <div class="form-group">
            <label>Asistencia:</label>
            <div class="student-info">Presente (10/06/2025), Presente (03/06/2025), Ausente (27/05/2025)</div> </div>

        <div class="button-group">
            <a href="#" class="btn btn-back" onclick="volverATras(); return false;">Volver</a>
            <div>
                <a href="#" class="btn btn-excel" onclick="generarExcel(); return false;">EXCEL</a>
                <a href="#" class="btn btn-pdf" onclick="generarPdf(); return false;">PDF</a>
            </div>
        </div>
    </div>
</body>
</html>