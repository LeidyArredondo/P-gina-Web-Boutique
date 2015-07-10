/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import dataModelObject.ModelObjectCliente;
import java.sql.Connection;
import java.util.List;
import javax.swing.JOptionPane;
import model.Cliente;

/**
 *
 * @author DELL
 */
public class Test {
    
    public static void main(String[] arsg){
       Connection c = DbUtil.getConection();
       Cliente cliente = new Cliente();
       cliente.setNombre("Veronica");
       cliente.setApellido("Velez");
       cliente.setIdcliente(5);
       cliente.setDocumento(1234);
       cliente.setDireccion("Carrera");
       cliente.setTipo_documento("verovelez@hotmail.com");
       cliente.setTelefono_fijo(4535454);
       cliente.setTelefono_movil(3421213);
       ModelObjectCliente base = new ModelObjectCliente();
       base.insertarCliente(cliente);
       Cliente buscar = base.consultarCliente(1);
       System.out.println("el cliente consultado es " + buscar.getNombre() + " " + buscar.getApellido());
       base.eliminarCliente(5);
       Cliente cliente1 = new Cliente();
       cliente1.setNombre("Veronica");
       cliente1.setApellido("Velez");
       cliente1.setIdcliente(1);
       cliente1.setDocumento(1234);
       cliente1.setDireccion("Carrera");
       cliente1.setTipo_documento("verovelez@hotmail.com");
       cliente1.setTelefono_fijo(4535454);
       cliente1.setTelefono_movil(3421213);
       base.actualizarCliente(cliente);
     /*  List<Cliente> listacliente = base.();
        for (Cliente cliente2 : listacliente) {
            System.out.println("El cliente " + cliente.getNombre() + " " + cliente.getApellido());
        } */
     
    }
    
}
