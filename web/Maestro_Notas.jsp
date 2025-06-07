<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Notas</title>
   <link rel="stylesheet" href="Estilos/E_Mae_Not.css">
    <script>

        function calcularPromedio(event) {
            const fila = event.target.closest('tr');
            const inputsNotas = fila.querySelectorAll('input[type="number"]');
            let sumaNotas = 0;
            let contadorNotas = 0;

            inputsNotas.forEach(input => {
                const nota = parseFloat(input.value);

                if (!isNaN(nota) && nota >= 0 && nota <= 20) {
                    sumaNotas += nota;
                    contadorNotas++;
                }
            });

            const promedioInput = fila.querySelector('input[type="text"][readonly]');
            if (contadorNotas > 0) {
                const promedio = (sumaNotas / contadorNotas).toFixed(2);
                promedioInput.value = promedio;
            } else {
                promedioInput.value = '';
            }
        }

        // Función para el botón "Volver"
        function volverATras() {
            window.history.back(); 
        }

        function guardarNotas(event) {
            event.preventDefault();

            const cursoSeleccionado = document.getElementById("curso").value;
            const alumnoSeleccionado = document.getElementById("alumno").value;
            const filaNotas = document.querySelector("table tbody tr");

            const inputsNotas = filaNotas.querySelectorAll('input[type="number"]');
            const promedioInput = filaNotas.querySelector('input[type="text"][readonly]');

            let notas = [];
            let promedioCalculado = parseFloat(promedioInput.value);

            let todasNotasValidas = true;
            inputsNotas.forEach(input => {
                const nota = parseFloat(input.value);
                if (isNaN(nota) || nota < 0 || nota > 20) {
                    todasNotasValidas = false;
                    input.style.borderColor = 'red';
                } else {
                    input.style.borderColor = '';
                    notas.push(nota);
                }
            });

            if (!todasNotasValidas) {
                alert("Por favor, ingrese todas las notas y asegúrese de que estén entre 0 y 20.");
                return; 
            }

            const datosParaGuardar = {
                curso: cursoSeleccionado,
                alumno: alumnoSeleccionado,
                notas: notas,
                promedio: promedioCalculado
            };

            console.log("Datos a guardar:", datosParaGuardar);
            alert("Notas guardadas (simuladas) para " + alumnoSeleccionado + " en el curso " + cursoSeleccionado + "\nRevisa la consola para ver los datos.");

        }

        document.addEventListener('DOMContentLoaded', () => {

            document.querySelectorAll('table tbody input[type="number"]').forEach(input => {
                input.addEventListener('input', calcularPromedio);
            });

            document.querySelectorAll('table tbody tr').forEach(fila => {
                const primerInputNota = fila.querySelector('input[type="number"]');
                if (primerInputNota) {
                    calcularPromedio({ target: primerInputNota });
                }
            });
        });
    </script>
</head>
<body>
    <div class="contenedor">
        <form onsubmit="guardarNotas(event)">
            <div class="fila-seleccion">
                <div class="grupo">
                    <label for="curso"><strong>Curso:</strong></label>
                    <select id="curso" name="curso">
                        <option value="">-- Seleccione un Curso --</option>
                        <option value="Matematica">Matemática</option>
                        <option value="Programacion">Programación</option>
                        <option value="BaseDeDatos">Base de Datos</option>
                        <option value="Redes">Redes</option>
                    </select>
                </div>

                <div class="grupo">
                    <label for="alumno"><strong>Apellidos y nombres</strong></label>
                    <select id="alumno" name="alumno">
                        <option value="">-- Seleccione un Alumno --</option>
                        <option value="Contreras Delgado Jhordan Anthony">Contreras Delgado Jhordan Anthony</option>
                        <option value="Perez Gomez Ana Lucia">Pérez Gómez Ana Lucía</option>
                        <option value="Rojas Torres Luis Alberto">Rojas Torres Luis Alberto</option>
                        <option value="Diaz Salazar Carolina">Díaz Salazar Carolina</option>
                    </select>
                </div>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>Apellidos y nombres</th>
                        <th>Nota_1</th>
                        <th>Nota_2</th>
                        <th>Nota_3</th>
                        <th>Nota_4</th>
                        <th>Promedio</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Contreras Delgado Jhordan Anthony</td>
                        <td><input type="number" min="0" max="20"></td> <td><input type="number" min="0" max="20"></td> <td><input type="number" min="0" max="20"></td> <td><input type="number" min="0" max="20"></td> <td><input type="text" readonly></td> </tr>
                </tbody>
            </table>

            <div class="botones">
                <button type="button" class="volver" onclick="volverATras()">Volver</button>
                <button type="submit" class="guardar">Guardar</button>
            </div>
        </form>
    </div>
</body>
</html>