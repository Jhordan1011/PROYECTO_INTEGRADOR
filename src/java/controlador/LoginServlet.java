/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
// controlador/LoginServlet.java
package controlador;

import dao.UsuarioDAO;
import dao.UsuarioDAOImpl;
import modelo.Usuario;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

// IMPORTAR LOGBACK / SLF4J
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final Logger logger = LoggerFactory.getLogger(LoginServlet.class);

    private UsuarioDAO usuarioDAO = new UsuarioDAOImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener parámetros del formulario
        String codigo = request.getParameter("codigo");
        String contrasena = request.getParameter("contrasena");
        String rol = request.getParameter("rol");

        // Mostrar en consola para debug con LOGBACK
        logger.info("Código recibido: {}", codigo);
        logger.info("Contraseña recibida: {}", contrasena);
        logger.info("Rol recibido: {}", rol);

        // Buscar usuario por código
        Usuario usuario = usuarioDAO.obtenerPorCodigo(codigo);

        // Validar credenciales
        if (usuario != null &&
            usuario.getContrasena().trim().equals(contrasena.trim()) &&
            usuario.getRol().trim().equals(rol.trim())) {

            logger.info("Login correcto para el usuario: {}", codigo);

            if (rol.equals("alumno")) {
                response.sendRedirect("Alumno_Inicio.jsp");
            } else if (rol.equals("docente")) {
                response.sendRedirect("Maestro_Seccion.jsp?nombre=" + codigo);
            }

        } else {
            logger.warn("Credenciales incorrectas o usuario no encontrado.");
            response.sendRedirect("Login.jsp?error=1");
        }
    }
}



