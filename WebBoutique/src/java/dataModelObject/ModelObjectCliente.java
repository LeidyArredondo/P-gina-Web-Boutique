/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * <code>package</code> Contiene la clase ModelObjectCliente .
 */
package dataModelObject;

/**
 * Se importa la clase <code>java.sql.Connection</code>.
 */
import java.sql.Connection;

/**
 * Se importa la clase <code>java.sql.PreparedStatement</code>.
 */
import java.sql.PreparedStatement;

/**
 * Se importa la clase <code>java.sql.ResultSet</code>.
 */
import java.sql.ResultSet;

/**
 * Se importa la clase <code>java.sql.SQLException</code>.
 */
import java.sql.SQLException;

/**
 * Se importa la clase <code>java.sql.Statement</code>.
 */
import java.sql.Statement;

/**
 * Se importa la clase <code>java.util.ArrayList</code>.
 */
import java.util.ArrayList;

/**
 * Se importa la clase <code>java.util.List</code>.
 */
import java.util.List;

/**
 * Se importa la clase <code>model.Cliente</code>.
 */
import model.Cliente;

/**
 * Se importa la clase <code>util.DbUtil</code>.
 */
import util.DbUtil;

/**
 * Se crea la clase que contiene los métodos de <code>insertarCliente</code>, <code>eliminarCliente</code>, <code>actualizarCliente</code>,
 * <code>consultarCliente</code>. 
 * @author Leidy Arredondo
 * @author Veronica Velez
 * @version 1.0  22/07/2015
 * @since JDK versión 1.8.0
 */
public class ModelObjectCliente {

    /**
     * Se esta declarando una variable de tipo <code>Connection</code>.
     */
    private Connection conection;

    /**
     * Constructor para crear un objeto de la clase <code>Cliente</code> e
     * inicializa la variable <code>conection</code>con la conexion a la base de
     * datos.
     *
     */
    public ModelObjectCliente() {
        conection = DbUtil.getConection();
    }

    /**
     * Método que inserta un nuevo cliente a la base de datos.
     *
     * @param cliente es una variable de tipo <code>Cliente</code> que contiene
     * todos los datos de un cliente a registrar en la base de datos.
     * @throws NullPointerException <code>SQLException e</code> Esta excepción
     * se da cuando no es posible hacer de manera correcta la sentencia SQL.
     */
    public void insertarCliente(Cliente cliente) {

        try {
            PreparedStatement insertarSql
                    = conection.prepareStatement("insert into cliente (idcliente, tipo_documento, documento, nombre, apellido, dirección, teléfono_fijo, teléfono_móvil)"
                            + "values(?, ?, ?, ?, ?, ?, ?, ?)");
            insertarSql.setInt(1, cliente.getIdcliente());
            insertarSql.setString(2, cliente.getTipo_documento());
            insertarSql.setInt(3, cliente.getDocumento());
            insertarSql.setString(4, cliente.getNombre());
            insertarSql.setString(5, cliente.getApellido());
            insertarSql.setString(6, cliente.getDireccion());
            insertarSql.setInt(7, cliente.getTelefono_fijo());
            insertarSql.setInt(8, cliente.getTelefono_movil());
            insertarSql.executeUpdate();
            System.out.println("Cliente Insertado");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Método que elimina un clliente existente de la base de datos.
     *
     * @param idCliente es una variable de tipo <code>int</code> que contiene
     * los datos del cliente a eliminar.
     * @throws NullPointerException <code>SQLException e</code> Esta excepción
     * se da cuando no es posible hacer de manera correcta la sentencia SQL.
     */
    public void eliminarCliente(int idCliente) {
        try {
            PreparedStatement eliminarCliente = conection.prepareStatement("delete from cliente where idCliente=?");
            eliminarCliente.setInt(1, idCliente);
            eliminarCliente.executeUpdate();
            System.out.println("Cliente Eliminado");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Método que actualiza un cliente ya existente de la base de datos.
     *
     * @param cliente es una variable de tipo <code>Cliente</code> que contiene
     * todos los datos a actualizar de un cliente.
     * @throws NullPointerException <code>SQLException e</code> Esta excepción
     * se da cuando no es posible hacerde manera correcta la sentencia SQL.
     */
    public void actualizarCliente(Cliente cliente) {
        try {
            PreparedStatement actualizarSql
                    = conection.prepareStatement("update CLIENTE set \n"
                            + "tipo_documento =?, \n"
                            + "documento =?, \n"
                            + "nombre =?, \n"
                            + "apellido =?, \n"
                            + "dirección =?, \n"
                            + "teléfono_fijo =?, \n"
                            + "teléfono_móvil =?\n"
                            + "where idcliente =?");
            actualizarSql.setString(1, cliente.getTipo_documento());
            actualizarSql.setInt(2, cliente.getDocumento());
            actualizarSql.setString(3, cliente.getNombre());
            actualizarSql.setString(4, cliente.getApellido());
            actualizarSql.setString(5, cliente.getDireccion());
            actualizarSql.setInt(6, cliente.getTelefono_fijo());
            actualizarSql.setInt(7, cliente.getTelefono_movil());
            actualizarSql.setInt(8, cliente.getIdcliente());
            actualizarSql.executeUpdate();
            System.out.println("cliente actualizado");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * Método que trae los clientes registrados de la base de datos.
     *
     * @throws NullPointerException <code>SQLException e</code> Esta excepción
     * se da cuando no es posible hacer de manera correcta la sentencia SQL.
     * @return un <code>ArrayList</code> de tipo <code>Cliente</code> con los
     * datos de los clientes consultados.
     */
    public List<Cliente> cargarClientes() {
        Cliente cliente;
        List<Cliente> listaClientes = new ArrayList<Cliente>();
        try {
            Statement consultaSql = conection.createStatement();
            ResultSet rs = consultaSql.executeQuery("select * from cliente");
            while (rs.next()) {
                cliente = new Cliente();
                cliente.setIdcliente(rs.getInt("idcliente"));
                cliente.setTipo_documento(rs.getString("tipo_documento"));
                cliente.setDocumento(rs.getInt("documento"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setDireccion(rs.getString("dirección"));
                cliente.setTelefono_fijo(rs.getInt("teléfono_fijo"));
                cliente.setTelefono_movil(rs.getInt("teléfono_móvil"));
                listaClientes.add(cliente);
            }
            return listaClientes;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }

        return listaClientes;
    }

    /**
     * Método que consulta un cliente existente de la base de datos.
     *
     * @param idCliente es una variable de tipo <code>int</code> que contiene
     * los datos del cliente a consultar.
     * @throws NullPointerException <code>SQLException e</code> Esta excepción
     * se da cuando no es posible hacer de manera correcta la sentencia SQL.
     * @return una variable <code>cliente</code> de tipo <code>Cliente</code>
     * con los datos consultados o una retorna <code>null</code> cuando el
     * cliente no existe.
     */
    public Cliente consultarCliente(int idCliente) {
        Cliente cliente = null;
        try {
            PreparedStatement consultaSql = conection.
                    prepareStatement("select * from cliente where idcliente=?");
            consultaSql.setInt(1, idCliente);
            ResultSet rs = consultaSql.executeQuery();

            if (rs.next()) {
                cliente = new Cliente();
                cliente.setIdcliente(rs.getInt("idcliente"));
                cliente.setTipo_documento(rs.getString("tipo_documento"));
                cliente.setDocumento(rs.getInt("documento"));
                cliente.setNombre(rs.getString("nombre"));
                cliente.setApellido(rs.getString("apellido"));
                cliente.setDireccion(rs.getString("dirección"));
                cliente.setTelefono_fijo(rs.getInt("teléfono_fijo"));
                cliente.setTelefono_movil(rs.getInt("teléfono_móvil"));
            }

            return cliente;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }


}
