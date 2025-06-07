/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
// modelo/Usuario.java
package modelo;

public class Usuario {
    private String codigo;
    private String contrasena;
    private String rol;

    public Usuario(String codigo, String contrasena, String rol) {
        this.codigo = codigo;
        this.contrasena = contrasena;
        this.rol = rol;
    }

    public String getCodigo() {
        return codigo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public String getRol() {
        return rol;
    }
}
