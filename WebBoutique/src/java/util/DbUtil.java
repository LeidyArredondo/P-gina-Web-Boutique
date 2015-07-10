/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * <code>package</code> Contiene la clase DbUtil.
 */
package util;

/**
 * Se importa la clase <code>java.sql.Connection</code>.
 */
import java.sql.Connection;
/**
 * Se importa la clase <code>java.sql.DriverManager</code>.
 */
import java.sql.DriverManager;

/**
 * Se crea la clase que contiene los métodos por los cuales se genera la
 * conexión a la base de datos.
 *
 * @author Leidy Arredondo
 * @author Veronica Velez
 * @version 1.0 22/07/2015
 * @since JDK version 1.8.0
 */
public class DbUtil {

    /**
     * Se esta declarando una variable de tipo <code>Connection</code>.
     */
    private static Connection conection = null;

    /**
     * Método que crea la conexión a la base de datos.
     *
     * @return Retorna una variable  <code>conection</code> de tipo
     *  <code>Connection</code> con el estado de la conexión.
     */
    public static Connection getConection() {
        if (conection != null) {
            return conection;
        } else {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String username = "system";
                String password = "thomas";
                String url = "jdbc:oracle:thin:@localhost:1521:XE";
                conection = DriverManager.getConnection(url, username, password);
                System.out.println("Conectado");
            } catch (Exception e) {
                System.out.println("Desconectado");
                System.out.println(e.getMessage());
            }
            return conection;
        }
    }

}
