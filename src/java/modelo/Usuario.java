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

    // Constructor privado: solo accesible desde el Builder
    private Usuario(Builder builder) {
        this.codigo = builder.codigo;
        this.contrasena = builder.contrasena;
        this.rol = builder.rol;
    }

    // Getters
    public String getCodigo() {
        return codigo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public String getRol() {
        return rol;
    }

    // Clase Builder interna
    public static class Builder {
        private String codigo;
        private String contrasena;
        private String rol;

        public Builder setCodigo(String codigo) {
            this.codigo = codigo;
            return this;
        }

        public Builder setContrasena(String contrasena) {
            this.contrasena = contrasena;
            return this;
        }

        public Builder setRol(String rol) {
            this.rol = rol;
            return this;
        }

        public Usuario build() {
            return new Usuario(this);
        }
    }
}
