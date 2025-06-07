<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Asistencia</title>
    <link rel="stylesheet" href="Estilos/E_Mae_Reg.css">
    <script>

        function volverATras() {
            window.history.back(); 

        }

        function guardarAsistencia() {
            const cursoSeleccionado = document.getElementById("curso").value;
            const tabla = document.querySelector("table tbody");
            const filas = tabla.querySelectorAll("tr");

            let datosAsistencia = [];

            filas.forEach(fila => {
                const nombreAlumno = fila.cells[0].querySelector("input") ? fila.cells[0].querySelector("input").value : '';
                const asistencia = fila.cells[1].querySelector("input[type='checkbox']").checked ? "Presente" : "Ausente";
                const fecha = fila.cells[2].querySelector("input[type='date']").value;

                if (nombreAlumno) {
                    datosAsistencia.push({
                        curso: cursoSeleccionado,
                        alumno: nombreAlumno,
                        asistencia: asistencia,
                        fecha: fecha
                    });
                }
            });

            console.log("Datos a guardar:", datosAsistencia);
            alert("Asistencia guardada (simulada) para el curso: " + cursoSeleccionado + "\nRevisa la consola para ver los datos.");

        }

        function agregarFila() {
            const tabla = document.querySelector("table tbody");
            const nuevaFila = tabla.insertRow(); 

            const celdaNombre = nuevaFila.insertCell(0);
            const celdaAsistencia = nuevaFela.insertCell(1);
            const celdaFecha = nuevaFila.insertCell(2);

            celdaNombre.innerHTML = '<input type="text" placeholder="Nombre del Alumno">';
            celdaAsistencia.innerHTML = '<input type="checkbox">'; 
            celdaFecha.innerHTML = '<input type="date">'; 
        }

        document.addEventListener('DOMContentLoaded', (event) => {
            const today = new Date();
            const yyyy = today.getFullYear();
            let mm = today.getMonth() + 1;
            let dd = today.getDate();

            if (dd < 10) dd = '0' + dd;
            if (mm < 10) mm = '0' + mm;

            const formattedToday = yyyy + '-' + mm + '-' + dd;

            document.querySelectorAll('input[type="date"]').forEach(input => {
                input.value = formattedToday;
            });
        });

    </script>
</head>
<body>
    <div class="container">
        <h2>Registro de Asistencia</h2>
        <div class="form-group">
            <label for="curso"><strong>Curso:</strong></label>
            <select id="curso">
                <option value="Texto">Seleccione un Curso</option> <option value="Matematica">Matemática</option>
                <option value="Programacion">Programación</option>
                <option value="BaseDeDatos">Base de Datos</option> </select>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Apellidos y Nombres</th>
                    <th>Asistencia</th>
                    <th>Fecha</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" placeholder="Nombre del Alumno"></td>
                    <td><input type="checkbox"></td>
                    <td><input type="date"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Nombre del Alumno"></td>
                    <td><input type="checkbox"></td>
                    <td><input type="date"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Nombre del Alumno"></td>
                    <td><input type="checkbox"></td>
                    <td><input type="date"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Nombre del Alumno"></td>
                    <td><input type="checkbox"></td>
                    <td><input type="date"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Nombre del Alumno"></td>
                    <td><input type="checkbox"></td>
                    <td><input type="date"></td>
                </tr>
                <tr>
                    <td><input type="text" placeholder="Nombre del Alumno"></td>
                    <td><input type="checkbox"></td>
                    <td><input type="date"></td>
                </tr>
            </tbody>
        </table>

        <button class="btn add-row" onclick="agregarFila()">Añadir Fila</button>

        <div class="button-group">
            <button class="btn volver" onclick="volverATras()">Volver</button>
            <button class="btn guardar" onclick="guardarAsistencia()">Guardar</button>
        </div>
    </div>
</body>
</html>