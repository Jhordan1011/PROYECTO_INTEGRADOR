/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
// dao/UsuarioDAOImpl.java
package dao;

import modelo.Usuario;
import java.sql.*;

public class UsuarioDAOImpl implements UsuarioDAO {

    private final String url = "jdbc:mysql://localhost:3306/gestionacademica?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

    private final String usuarioBD = "root";
    private final String claveBD = "contreras10";

    @Override
    public Usuario obtenerPorCodigo(String codigo) {
        Usuario usuario = null;

        String sql = "SELECT codigo, contrasena, rol FROM usuarios WHERE codigo = ?";

        try (Connection conn = DriverManager.getConnection(url, usuarioBD, claveBD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, codigo);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String contrasena = rs.getString("contrasena");
                String rol = rs.getString("rol");
                usuario = new Usuario(codigo, contrasena, rol);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }
}
