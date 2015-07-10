/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataModelObject;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Perfiles;
import util.DbUtil;

/**
 *
 * @author DELL
 */
public class ModelObjectPerfiles {
     /**
      * Se esta declarando una variable de tipo <code>Connection</code>.     
     */
    private Connection conection;

    /**
     * Constructor para crear un objeto de la clase <code>Cliente</code> e inicializa la
     * variable <code>conection</code>con la conexion a la base de datos.
     * 
     */
    public ModelObjectPerfiles() {
        conection = DbUtil.getConection();
    }
    
    
    /** Método que inserta un nuevo cliente a la base de datos.     
      * @param perfil  es una variable de tipo <code>Perfiles</code> que contiene todos los datos de un cliente
      * a registrar en la base de datos.
      * @throws NullPointerException <code>SQLException e</code> Esta excepción se da cuando no es posible hacer de manera
      * correcta la sentencia SQL.
      */
    public void asignarPerfil(Perfiles perfil) {

        try {
            PreparedStatement asignarSql
                    = conection.prepareStatement("insert into perfil (idperfil, documento, nombre_usuario, contraseña, confirmar_contraseña, correo_electronico, pregunta_secreta, respuesta)"
                            + "values(?, ?, ?, ?, ?, ?, ?, ?)");
            asignarSql.setInt(1, perfil.getIdperfil());
            asignarSql.setInt(2, perfil.getDocumento());
            asignarSql.setString(3, perfil.getNombre_usuario());
            asignarSql.setString(4, perfil.getContraseña());
            asignarSql.setString(5, perfil.getConfirmar_contraseña());
            asignarSql.setString(6, perfil.getCorreo_electronico());
            asignarSql.setString(7, perfil.getPregunta_secreta());
            asignarSql.setString(8, perfil.getRespuesta());
            asignarSql.executeUpdate();
            System.out.println("Perfil Asignado"); 
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    /** Método que elimina un clliente existente de la base de datos.     
      * @param idPerfil  es una variable de tipo <code>int</code> que contiene los datos del cliente a eliminar.
0'      * @throws NullPointerException <code>SQLException e</code> Esta excepción se da cuando no es posible hacer de manera
      * correcta la sentencia SQL.
      */
    
    public void eliminarPerfil(int idPerfil) {
        try {
            PreparedStatement eliminarPerfil = conection.prepareStatement("delete from perfiles where idPerfil=?");
            eliminarPerfil.setInt(1, idPerfil);
            eliminarPerfil.executeUpdate();
            System.out.println("Perfil Eliminado"); 
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
     /** Método que actualiza un cliente ya existente de la base de datos.     
      * @param perfil  es una variable de tipo <code>Cliente</code> que contiene todos los datos a actualizar de un cliente.
      * @throws NullPointerException <code>SQLException e</code> Esta excepción se da cuando no es posible hacerde manera
      * correcta la sentencia SQL.
     */
    public void actualizarPerfil(Perfiles perfil) {
        try {
            PreparedStatement actualizarSql
                    = conection.prepareStatement("update PERFILES set \n"
                            + "documento =?, \n"
                            + "nombre_usuario =?, \n"
                            + "contraseña =?, \n"
                            + "confirmar_contraseña =?, \n"
                            + "correo_electronico =?, \n"
                            + "pregunta_secreta =?, \n"
                            + "respuesta =?\n"
                            + "where idperfil =?");
            actualizarSql.setInt(1, perfil.getDocumento());
            actualizarSql.setString(2, perfil.getNombre_usuario());
            actualizarSql.setString(3, perfil.getContraseña());
            actualizarSql.setString(4, perfil.getConfirmar_contraseña());
            actualizarSql.setString(5, perfil.getCorreo_electronico());
            actualizarSql.setString(6, perfil.getPregunta_secreta());
            actualizarSql.setString(7, perfil.getRespuesta());
            actualizarSql.setInt(8, perfil.getIdperfil());
            actualizarSql.executeUpdate();
            System.out.println("perfil actualizado"); 
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

     /** Método que trae los clientes registrados de la base de datos.     
      * @throws NullPointerException <code>SQLException e</code> Esta excepción se da cuando no es posible hacer de manera
      * correcta la sentencia SQL.
      * @return un <code>ArrayList</code> de tipo <code>Perfiles</code> con los datos de los clientes consultados.
      */
    public List<Perfiles> cargarPerfil() {
        Perfiles perfil;
        List<Perfiles> listaPerfiles = new ArrayList<>();
        try {
            Statement consultaSql = conection.createStatement();
            ResultSet rs = consultaSql.executeQuery("select * from perfiles order by nombre_usuario ");
            while (rs.next()) {
                perfil = new Perfiles();
                perfil.setIdperfil(rs.getInt("idperfil"));
                perfil.setDocumento(rs.getInt("documento"));
                perfil.setNombre_usuario(rs.getString("nombre_usuario"));
                perfil.setContraseña(rs.getString("contraseña"));
                perfil.setConfirmar_contraseña(rs.getString("confirmar_contraseña"));
                perfil.setCorreo_electronico(rs.getString("correo_electronico"));
                perfil.setPregunta_secreta(rs.getString("pregunta_secreta"));
                perfil.setRespuesta(rs.getString("respuesta"));
                listaPerfiles.add(perfil);
            } 
            return listaPerfiles;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }

        return listaPerfiles;
    }

    
     /** Método que consulta un cliente existente de la base de datos.     
      * @param idPerfil e es una variable de tipo <code>int</code> que contiene los datos del cliente a consultar.
      * @throws NullPointerException <code>SQLException e</code> Esta excepción se da cuando no es posible hacer de manera
      * correcta la sentencia SQL.
      * @return una variable <code>cliente</code> de tipo <code>Cliente</code> con los datos consultados
      * o una retorna <code>null</code> cuando el cliente no existe.
      */
    public Perfiles consultarPerfil(int idPerfil) {
        Perfiles perfil = null;
        try {
            PreparedStatement consultaSql = conection.
                    prepareStatement("select * from perfiles where idperfil=?");
            consultaSql.setInt(1, idPerfil);
            ResultSet rs = consultaSql.executeQuery();

            if (rs.next()) {
                perfil = new Perfiles();
                perfil.setIdperfil(rs.getInt("idperfil"));                
                perfil.setDocumento(rs.getInt("documento"));
                perfil.setNombre_usuario(rs.getString("nombre_usuario"));
                perfil.setContraseña(rs.getString("contraseña"));
                perfil.setConfirmar_contraseña(rs.getString("confirmar_contraseña"));
                perfil.setCorreo_electronico(rs.getString("correo_electronico"));
                perfil.setPregunta_secreta(rs.getString("pregunta_secreta"));
                perfil.setRespuesta(rs.getString("respuesta"));
            }
 
            return perfil;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

}

