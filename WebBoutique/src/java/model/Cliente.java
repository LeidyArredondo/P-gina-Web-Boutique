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
 * Se crea la clase <code>Cliente</code> donde todos sus atributos son privados
 * y contiene todos los métodos por los cuales pueden ser accedidos por
 * <code>get</code> y <code>set</code> del objeto cliente.
 *
 * @author Leidy Arredondo
 * @author Veronica Velez
 * @version 1.0 22/07/2015
 * @since JDK version 1.8.0
 */
public class Cliente {

    /**
     * Variable de tipo <code>int</code> que representa el id del cliente.
     */
    private int idcliente;
    /**
     * Variable de tipo <code>String</code> que representa el tipo de documento
     * del cliente.
     */
    private String tipo_documento;
    /**
     * Variable de tipo <code>int</code> que representa el documento del cliente.
     */
    private int documento;
    /**
     * Variable de tipo <code>String</code> que representa el nombre del cliente.
     */
    private String nombre;
    /**
     * Variable de tipo <code>String</code> que representa el apellido del cliente.
     */
    private String apellido;
    /**
     * Variable de tipo <code>String</code> que representa la dirección de
     * residencia del cliente.
     */
    private String direccion;
    /**
     * Variable de tipo <code>int</code> que representa el teléfono fijo del cliente.
     */
    private int telefono_fijo;
    /**
     * Variable de tipo <code>int</code> que representa el teléfono móvil del cliente.
     */
    private int telefono_movil;

    /**
     * Constructor para crear un objeto de la clase <code>Cliente</code>.
     */
    public Cliente() {
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getTipo_documento() {
        return tipo_documento;
    }

    public void setTipo_documento(String tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono_fijo() {
        return telefono_fijo;
    }

    public void setTelefono_fijo(int telefono_fijo) {
        this.telefono_fijo = telefono_fijo;
    }

    public int getTelefono_movil() {
        return telefono_movil;
    }

    public void setTelefono_movil(int telefono_movil) {
        this.telefono_movil = telefono_movil;
    }

}
