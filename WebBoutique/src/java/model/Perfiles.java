/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * <code>package</code> Contiene la clase Cliente.
 */
package model;

/**
 * Se crea la clase <code>Cliente</code> donde todos sus atributos son privados y contiene todos
 * los métodos por los cuales pueden ser accedidos por <code>get</code> y <code>set</code> del objeto cliente. 
 * @author Leidy Arredondo
 * @author Veronica Velez
 * @version 1.0  22/07/2015
 * @since JDK version 1.8.0
 */

public class Perfiles {
    /** Variable de tipo <code>int</code> que representa el id del perfil.*/
    private int idperfil;
    /** Variable de tipo <code>int</code> que representa el documento del usuario.*/
    private int documento;
    /** Variable de tipo <code>String</code> que representa el nombre del cliente.*/
    private String nombre_usuario; 
    /** Variable de tipo <code>String</code> que representa la dirección de residencia del cliente.*/
    private String contraseña;
    /** Variable de tipo <code>int</code> que representa el teléfono fijo del cliente.*/
    private String confirmar_contraseña;
    /** Variable de tipo <code>int</code> que representa el teléfono móvil del cliente.*/
    private String correo_electronico;
    /** Variable de tipo <code>int</code> que representa el teléfono móvil del cliente.*/
    private String pregunta_secreta;
    /** Variable de tipo <code>int</code> que representa el teléfono móvil del cliente.*/
    private String respuesta;
    
    /**
     * Constructor para crear un objeto de la clase <code>Cliente</code>.
     */
    public Perfiles(){}

    public int getIdperfil() {
        return idperfil;
    }

    public void setIdperfil(int idperfil) {
        this.idperfil = idperfil;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getConfirmar_contraseña() {
        return confirmar_contraseña;
    }

    public void setConfirmar_contraseña(String confirmar_contraseña) {
        this.confirmar_contraseña = confirmar_contraseña;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public String getPregunta_secreta() {
        return pregunta_secreta;
    }

    public void setPregunta_secreta(String pregunta_secreta) {
        this.pregunta_secreta = pregunta_secreta;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }
    
    
    

 
}
