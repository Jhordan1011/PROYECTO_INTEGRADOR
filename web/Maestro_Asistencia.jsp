<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Asistencia</title>
    <link rel="stylesheet" href="Estilos/E_Mae_Asi.css">
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
                const inputNombre = fila.cells[0].querySelector("input[type='text']");
                const inputAsistencia = fila.cells[1].querySelector("input[type='checkbox']");
                const inputFecha = fila.cells[2].querySelector("input[type='date']");

            if (inputNombre && inputAsistencia && inputFecha && inputNombre.value.trim() !== "") {
                    const nombreAlumno = inputNombre.value.trim();
                    const asistencia = inputAsistencia.checked ? "Presente" : "Ausente";
                    const fecha = inputFecha.value;

                    datosAsistencia.push({
                        curso: cursoSeleccionado,
                        alumno: nombreAlumno,
                        asistencia: asistencia,
                        fecha: fecha
                    });
                }
            });


            console.log("Datos de asistencia a guardar:", datosAsistencia);

            if (datosAsistencia.length > 0) {
                alert(`Asistencia guardada (simulada) para el curso: ${cursoSeleccionado}.\nTotal de registros: ${datosAsistencia.length}\nRevisa la consola (F12) para ver los datos detallados.`);

            } else {
                alert("No hay datos de asistencia para guardar. Asegúrate de introducir nombres de alumnos.");
            }

        }

        function agregarFila() {
            const tablaBody = document.querySelector("table tbody");
            const nuevaFila = tablaBody.insertRow();

            const celdaNombre = nuevaFila.insertCell(0);
            const celdaAsistencia = nuevaFila.insertCell(1);
            const celdaFecha = nuevaFila.insertCell(2);

            celdaNombre.innerHTML = '<input type="text" placeholder="Apellidos y Nombres">';
            celdaAsistencia.innerHTML = '<input type="checkbox">';
            celdaFecha.innerHTML = '<input type="date">';

            const today = new Date();
            const year = today.getFullYear();
            let month = today.getMonth() + 1;
            let day = today.getDate();

            if (day < 10) day = '0' + day;
            if (month < 10) month = '0' + month;

            const formattedToday = year + '-' + month + '-' + day;
            celdaFecha.querySelector('input[type="date"]').value = formattedToday;
        }

        document.addEventListener('DOMContentLoaded', (event) => {
            const today = new Date();
            const year = today.getFullYear();
            let month = today.getMonth() + 1;
            let day = today.getDate();

            if (day < 10) day = '0' + day;
            if (month < 10) month = '0' + month;

            const formattedToday = year + '-' + month + '-' + day;

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
                <option value="">-- Seleccione un Curso --</option>
                <option value="Matematica">Matemática</option>
                <option value="Programacion">Programación</option>
                <option value="BaseDeDatos">Base de Datos</option>
                <option value="Redes">Redes</option>
            </select>
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

        <div class="button-group">
            <button class="btn add-row" onclick="agregarFila()">Añadir Fila</button> <button class="btn volver" onclick="volverATras()">Volver</button>
            <button class="btn guardar" onclick="guardarAsistencia()">Guardar</button>
        </div>
    </div>
</body>
</html>