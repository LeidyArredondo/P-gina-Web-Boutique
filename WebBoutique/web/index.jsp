<%-- 
    Document   : index
    Created on : 9/07/2015, 04:15:12 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="util.DbUtil"%>
<%@page import="java.sql.Connection"%> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styl.css">	
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <title>Boutique Black and White</title>
    </head>
    <body>

        <section>

            <%@page import="dataModelObject.ModelObjectCliente"%>
            <%@page import="model.Cliente"%>
            <%
                boolean nuevo = false,
                        guardar = false,
                        consultar = false,
                        modificar = false,
                        limpiar = false,
                        eliminar = false;

                String textTipo_documento = "";
                String txtNombres = "";
                String txtApellidos = "";
                String txtDireccion = "";
                String textIdCliente = "";
                String textNumDoc = "";
                String txtTelefono = "";
                String txtMovil = "";
                String mensaje = "";
                String estado = "false";

                if (request.getParameter("txtNombres") != null) {
                    txtNombres = request.getParameter("txtNombres");
                }
                if (request.getParameter("textIdCliente") != null) {
                    textIdCliente = request.getParameter("textIdCliente");
                }
                if (request.getParameter("textTipo_docuemnto") != null) {
                    textTipo_documento = request.getParameter("textTipo_documento");
                }
                if (request.getParameter("textNumDoc") != null) {
                    textNumDoc = request.getParameter("textNumDoc");
                }
                if (request.getParameter("txtApellidos") != null) {
                    txtApellidos = request.getParameter("txtApellidos");
                }
                if (request.getParameter("txtDireccion") != null) {
                    txtDireccion = request.getParameter("txtDireccion");
                }
                if (request.getParameter("txtTelefono") != null) {
                    txtTelefono = request.getParameter("txtTelefono");
                }
                if (request.getParameter("txtMovil") != null) {
                    txtMovil = request.getParameter("txtMovil");
                }

                if (request.getParameter("botonNuevo") != null) {
                    nuevo = true;
                }
                if (request.getParameter("botonGuardar") != null) {
                    guardar = true;
                }
                if (request.getParameter("botonConsultar") != null) {
                    consultar = true;
                }
                if (request.getParameter("botonEliminar") != null) {
                    eliminar = true;
                }
                if (request.getParameter("botonLimpiar") != null) {
                    limpiar = true;
                }

                if (request.getParameter("botonModificar") != null) {
                    modificar = true;
                }

                if (limpiar) {
                    textTipo_documento = "";
                    txtNombres = "";
                    txtApellidos = "";
                    txtDireccion = "";
                    textIdCliente = "";
                    textNumDoc = "";
                    txtTelefono = "";
                    txtMovil = "";
                }

                if (guardar) {
                    if (request.getParameter("textIdCliente") == null) {
                        System.out.println("Ingrese el Id del Cliente");
                    } else {
                        if (request.getParameter("textTipo_documento") == null) {
                            System.out.println("Ingrese el Tipo documento");
                        } else {
                            if (request.getParameter("textNumDoc") == null) {

                                System.out.println("Ingrese el Número Documento");
                            } else {
                                if (request.getParameter("txtNombres") == null) {

                                    System.out.println("Ingrese los Nombres");
                                } else {
                                    if (request.getParameter("txtApellidos") == null) {

                                        System.out.println("Ingrese los Apellidos");
                                    } else {
                                        if (request.getParameter("txtDireccion") == null) {

                                            System.out.println("Ingrese la direccion");
                                        } else {
                                            if (request.getParameter("txtTelefono") == null) {

                                                System.out.println("Ingrese el telefono");
                                            } else {
                                                if (request.getParameter("txtMovil") == null) {
                                                    System.out.println("Ingrese el telefono");
                                                } else {
                                                    Cliente cliente = new Cliente();
                                                    int idCliente = Integer.parseInt(request.getParameter("textIdCliente"));
                                                    cliente.setIdcliente(idCliente);
                                                    cliente.setTipo_documento(request.getParameter("textTipo_documento"));
                                                    cliente.setDocumento(Integer.parseInt(request.getParameter("textNumDoc")));
                                                    cliente.setNombre(request.getParameter("txtNombres"));
                                                    cliente.setApellido(request.getParameter("txtApellidos"));
                                                    cliente.setDireccion(request.getParameter("txtDireccion"));
                                                    cliente.setTelefono_fijo(Integer.parseInt(request.getParameter("txtTelefono")));
                                                    cliente.setTelefono_movil(Integer.parseInt(request.getParameter("txtMovil")));
                                                    ModelObjectCliente basedatos = new ModelObjectCliente();
                                                    basedatos.insertarCliente(cliente);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                if (nuevo) {
                    estado = "true";
                }

                if (consultar) {
                    Cliente clienteConsultar = null;
                    ModelObjectCliente baseDatos = new ModelObjectCliente();
                    clienteConsultar = baseDatos.consultarCliente(Integer.parseInt(request.getParameter("textIdCliente")));
                    if (clienteConsultar == null) {
                        textIdCliente = "";
                        mensaje = "cliente no existe";
                    } else {
                        textTipo_documento = clienteConsultar.getTipo_documento();
                        txtNombres = clienteConsultar.getNombre();
                        txtApellidos = clienteConsultar.getApellido();
                        txtDireccion = clienteConsultar.getDireccion();
                        textIdCliente = String.valueOf(clienteConsultar.getIdcliente());
                        textNumDoc = String.valueOf(clienteConsultar.getDocumento());
                        txtTelefono = String.valueOf(clienteConsultar.getTelefono_fijo());
                        txtMovil = String.valueOf(clienteConsultar.getTelefono_movil());
                    }
                }

                if (modificar) {
                    if (request.getParameter("textIdCliente") == null) {
                        System.out.println("Ingrese el Id del Cliente");
                    } else {
                        if (request.getParameter("textTipo_documento") == null) {
                            System.out.println("Ingrese el Tipo documento");
                        } else {
                            if (request.getParameter("textNumDoc") == null) {

                                System.out.println("Ingrese el Número Documento");
                            } else {
                                if (request.getParameter("txtNombres") == null) {

                                    System.out.println("Ingrese los Nombres");
                                } else {
                                    if (request.getParameter("txtApellidos") == null) {

                                        System.out.println("Ingrese los Apellidos");
                                    } else {
                                        if (request.getParameter("txtDireccion") == null) {

                                            System.out.println("Ingrese la direccion");
                                        } else {
                                            if (request.getParameter("txtTelefono") == null) {

                                                System.out.println("Ingrese el telefono");
                                            } else {
                                                if (request.getParameter("txtMovil") == null) {
                                                    System.out.println("Ingrese el telefono");
                                                } else {
                                                    Cliente cliente = new Cliente();
                                                    int idCliente = Integer.parseInt(request.getParameter("textIdCliente"));
                                                    cliente.setIdcliente(idCliente);
                                                    cliente.setTipo_documento(request.getParameter("textTipo_documento"));
                                                    cliente.setDocumento(Integer.parseInt(request.getParameter("textNumDoc")));
                                                    cliente.setNombre(request.getParameter("txtNombres"));
                                                    cliente.setApellido(request.getParameter("txtApellidos"));
                                                    cliente.setDireccion(request.getParameter("txtDireccion"));
                                                    cliente.setTelefono_fijo(Integer.parseInt(request.getParameter("txtTelefono")));
                                                    cliente.setTelefono_movil(Integer.parseInt(request.getParameter("txtMovil")));
                                                    ModelObjectCliente basedatos = new ModelObjectCliente();
                                                    basedatos.actualizarCliente(cliente);

                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                }

                if (eliminar) {
                    if (request.getParameter("textIdCliente") != null) {
                        ModelObjectCliente baseDatos = new ModelObjectCliente();
                        baseDatos.eliminarCliente(Integer.parseInt(request.getParameter("textIdCliente")));
                    } else {
                        System.out.print("Ingrese un usuario");
                    }
                }

            %>
            <div class= "container">
                <header>
                    <h1 class="titulo">Gestionar Clientes</h1>
                </header>
                <form method="post">
                    <div class="ladoizquierdo">
                        <div class="numerodocumento">
                            <label class="labeldocumento">Id Cliente </label>
                            <input type="number"  class="textodocumento" name="textIdCliente" id="textIdCliente" value="<%=textIdCliente%>"> 
                        </div>

                        <div class="numerodocumento">
                            <label class="labeldocumento">Documento</label>
                            <input type="number"  class="textodocumento" name="textNumDoc" id="textNumDoc" value="<%=textNumDoc%>">
                        </div>

                        <div class="numerodocumento">
                            <label class="labeldocumento">Apellidos</label>
                            <input type="text"  class="textodocumento" name="txtApellidos" id="txtApellidos" value="<%=txtApellidos%>"> 
                        </div>
                        <div class="numerodocumento">
                            <label class="labeldocumento">Telefono Fijo</label>
                            <input type="number"  class="textodocumento" name="txtTelefono" id="txtTelefono" value="<%=txtTelefono%>"> 
                        </div>
                    </div>
                    <div class="ladoderecho">
                        <div class="contraseña">
                            <label class="labeldocumento">Tipo Documento</label>
                            <input type="text"  class="textodocumento" name="textTipo_documento" id="textTipo_documento" value="<%=textTipo_documento%>">
                        </div>
                        <div class="contraseña">
                            <label class="labeldocumento">Nombres</label>
                            <input type="text"  class="textodocumento" name="txtNombres" id="txtNombres" value="<%=txtNombres%>">
                        </div>

                        <div class="contraseña">
                            <label class="labeldocumento">Dirección</label>
                            <input type="text"  class="textodocumento" name="txtDireccion" id="txtDireccion" value="<%=txtDireccion%>">
                        </div>
                        <div class="contraseña">
                            <label class="labeldocumento">Movil</label>
                            <input type="number"  class="textodocumento" name="txtMovil" id="txtMovil" value="<%=txtMovil%>">
                        </div>
                    </div>



                    <div class="botones">
                        <input type="submit" class="botoningresar" value="Nuevo" name="botonNuevo" id="botonNuevo"/>
                        <input type="submit" class="botoningresar" value="Guardar" name="botonGuardar" id="botonGuardar"/>
                        <input type="submit" class="botoningresar" value="Consultar" name="botonConsultar" id="botonConsultar"/>
                        <input type="submit" class="botoningresar" value="Modificar" name="botonModificar" id="botonModificar"/>
                        <input type="submit" class="botoningresar" value="Eliminar" name="botonEliminar" id="botonEliminar"/>
                        <input type="submit" class="botoningresar" value="Listar" name="botonListar" id="botonListar"/>
                        <input type="submit" class="botoningresar" value="Limpiar" name="botonLimpiar" id="botonLimpiar"/>
                        <input type="submit" class="botoningresar" value="Salir" name="botonSalir" id="botonSalir"/>
                    </div>


                </form>
        </section>


    </body>
</html>
