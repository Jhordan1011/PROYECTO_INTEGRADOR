/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
// dao/UsuarioDAOImpl.java
package dao;

import modelo.Usuario;
import java.sql.*;

public class UsuarioDAOImpl implements UsuarioDAO {
    //Singleton
    @Override
    public Usuario obtenerPorCodigo(String codigo) {
        Usuario usuario = null;
        String sql = "SELECT codigo, contrasena, rol FROM usuarios WHERE codigo = ?";

        try (Connection conn = ConexionBD.obtenerConexion();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, codigo);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String contrasena = rs.getString("contrasena");
                String rol = rs.getString("rol");
                //usuario = new Usuario(codigo, contrasena, rol);
                usuario = new Usuario.Builder()
                    .setCodigo(codigo)
                    .setContrasena(contrasena)
                    .setRol(rol)
                    .build();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }
}
