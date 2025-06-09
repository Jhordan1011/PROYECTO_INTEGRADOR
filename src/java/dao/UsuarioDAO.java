/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
// dao/UsuarioDAO.java
package dao;

import modelo.Usuario;

public interface UsuarioDAO {
    Usuario obtenerPorCodigo(String codigo);
}
