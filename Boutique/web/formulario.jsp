<%-- 
    
--%>

<%@page import="dataModelObject.ModelObjectPerfiles"%>
<%@page import="model.Perfiles"%>
<%@page import="util.DbUtil"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="stylp.css">	
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <title>Boutique Black and White</title>
    </head>
    <body>

        <section>

            <%@page import="dataModelObject.ModelObjectPerfiles"%>
            <%@page import="model.Perfiles"%>
            <%
                boolean nuevo = false,
                        guardar = false,
                        consultar = false,
                        modificar = true,
                        limpiar = false,
                        eliminar = false;
                String txtIdPerfil = "";
                String textNumDoc = "";
                String txtNombreUsu = "";
                String passwordContraseña = "";
                String passwordConfirmarCon = "";
                String txtCorreo = "";
                String txtPreguntaSe = "";
                String txtRespuesta = "";
                String mensaje = "";
                String estado = "false";

                if (request.getParameter("txtIdPerfil") != null) {
                    txtIdPerfil = request.getParameter("txtIdPerfil");
                }
                if (request.getParameter("textNumDoc") != null) {
                    textNumDoc = request.getParameter("textNumDoc");
                }
                if (request.getParameter("txtNombreUsu") != null) {
                    txtNombreUsu = request.getParameter("txtNombreUsu");
                }
                if (request.getParameter("passwordContraseña") != null) {
                    passwordContraseña = request.getParameter("passwordContraseña");
                }
                if (request.getParameter("passwordConfirmarCon") != null) {
                    passwordConfirmarCon = request.getParameter("passwordConfirmarCon");
                }
                if (request.getParameter("txtCorreo") != null) {
                    txtCorreo = request.getParameter("txtCorreo");
                }
                if (request.getParameter("txtPreguntaSe") != null) {
                    txtPreguntaSe = request.getParameter("txtPreguntaSe");
                }
                if (request.getParameter("txtRespuesta ") != null) {
                    txtRespuesta = request.getParameter("txtRespuesta ");
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
                    txtIdPerfil = "";
                    textNumDoc = "";
                    txtNombreUsu = "";
                    passwordContraseña = "";
                    passwordConfirmarCon = "";
                    txtCorreo = "";
                    txtPreguntaSe = "";
                    txtRespuesta = "";
                    mensaje = "";
                    estado = "false";
                }

                if (guardar) {
                    if (request.getParameter("txtIdPerfil") == null) {
                        System.out.println("Ingrese el Id del Perfil");
                    } else {
                        if (request.getParameter("textNumDoc") == null) {
                            System.out.println("Ingrese el Número de Documento");
                        } else {
                            if (request.getParameter("txtNombreUsu") == null) {

                                System.out.println("Ingrese el Nombre de Usuario");
                            } else {
                                if (request.getParameter("passwordContraseña") == null) {

                                    System.out.println("Ingrese la contraseña");
                                } else {
                                    if (request.getParameter("passwordConfirmarCon") == null) {

                                        System.out.println("Ingrese la contraseña nuevamente");
                                    } else {
                                        if (request.getParameter("txtCorreo") == null) {

                                            System.out.println("Ingrese el correo electronico");
                                        } else {
                                            if (request.getParameter("txtPreguntaSe") == null) {

                                                System.out.println("Ingrese la pregunta secreta");
                                            } else {
                                                if (request.getParameter("txtRespuesta") == null) {
                                                    System.out.println("Ingrese la respuesta");
                                                } else { 
                                                    Perfiles perfil = new Perfiles();
                                                    int idPerfil = Integer.parseInt(request.getParameter("txtIdPerfil"));
                                                    perfil.setIdperfil(idPerfil);
                                                    perfil.setDocumento(Integer.parseInt(request.getParameter("textNumDoc")));
                                                    perfil.setNombre_usuario(request.getParameter("txtNombreUsu"));
                                                    perfil.setContraseña(request.getParameter("passwordContraseña"));
                                                    perfil.setConfirmar_contraseña(request.getParameter("passwordConfirmarCon"));
                                                    perfil.setCorreo_electronico(request.getParameter("txtCorreo"));
                                                    perfil.setPregunta_secreta(request.getParameter("txtPreguntaSe"));
                                                    perfil.setRespuesta(request.getParameter("txtRespuesta"));
                                                    ModelObjectPerfiles basedatos = new ModelObjectPerfiles();
                                                    basedatos.asignarPerfil(perfil);
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
                    Perfiles perfilConsultar = null;
                    ModelObjectPerfiles baseDatos = new ModelObjectPerfiles();
                    perfilConsultar = baseDatos.consultarPerfil(Integer.parseInt(request.getParameter("textIdPerfil")));
                    if (perfilConsultar == null) {
                        txtIdPerfil = "";
                        mensaje = "perfil no existe";
                    } else {
                        txtNombreUsu = perfilConsultar.getNombre_usuario();
                        txtCorreo = perfilConsultar.getCorreo_electronico();
                        txtPreguntaSe = perfilConsultar.getPregunta_secreta();
                        txtRespuesta = perfilConsultar.getRespuesta();
                        passwordContraseña = perfilConsultar.getContraseña();
                        passwordConfirmarCon = perfilConsultar.getConfirmar_contraseña();
                        txtIdPerfil = String.valueOf(perfilConsultar.getIdperfil());
                        textNumDoc = String.valueOf(perfilConsultar.getDocumento());
                    }
                }

                if (modificar) {
                }

                if (eliminar) {
                    if (request.getParameter("textIdPerfil") != null) {
                        ModelObjectPerfiles baseDatos = new ModelObjectPerfiles();
                        baseDatos.eliminarPerfil(Integer.parseInt(request.getParameter("textIdPerfil")));
                    } else {
                        System.out.print("Ingrese un usuario");
                    }
                }

            %>

            <div class= "container">
                <header>
                    <h1 class="titulo">Gestionar Perfiles</h1>
                </header>
                <form method="post">
                    <div class="ladoizquierdo">
                        <div class="numerodocumento">
                            <label class="labeldocumento">Id Perfil</label>
                            <input type="number"  class="textodocumento" name="txtIdPerfil" value="<%=txtIdPerfil%>"> 
                        </div>
                        <div class="numerodocumento">
                            <label class="labeldocumento">Nombre de Usuario</label>
                            <input type="text"  class="textodocumento" name="txtNombreUsu" value="<%=txtNombreUsu%>"> 
                        </div>
                        <div class="numerodocumento">
                            <label class="labeldocumento">Confirmar Contraseña</label>
                            <input type="password"  class="textodocumento" name="passwordConfirmarCon" value="<%=passwordConfirmarCon%>"> 
                        </div>
                        <div class="numerodocumento">
                            <label class="labeldocumento">Pregunta secreta</label>
                            <input type="text"  class="textodocumento" name="txtPreguntaSe" value="<%=txtPreguntaSe%>"> 
                        </div>
                    </div>
                    <div class="ladoderecho">
                        <div class="contraseña">
                            <label class="labeldocumento">Número de Documento</label>
                            <input type="number"  class="textodocumento" name="textNumDoc" value="<%=textNumDoc%>">
                        </div>
                        <div class="contraseña">
                            <label class="labeldocumento">Contraseña</label>
                            <input type="password"  class="textodocumento" name="passwordContraseña" value="<%=passwordContraseña%>">
                        </div>
                        <div class="contraseña">
                            <label class="labeldocumento">Correo Electronico</label>
                            <input type="text"  class="textodocumento" name="txtCorreo" value="<%=txtCorreo%>">
                        </div>
                        <div class="contraseña">
                            <label class="labeldocumento">Respuesta</label>
                            <input type="text"  class="textodocumento" name="txtRespuesta" value="<%=txtRespuesta%>">
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
