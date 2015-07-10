<%-- 
    Document   : asignarPerfil
    Created on : 9/07/2015, 04:11:04 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Boutique Black and White</title> 
        <link href='http://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="Normalize.css">
        <link rel="stylesheet" href="estilosperfiles.css">
        <link rel="shortcut icon" href="icono.ico" type="C:\Users\Leidy\Desktop\WebBoutique\icono.ico">
    </head>
    <body>
        <div class= "container">
            <header>
                <h1 class="titulo">Gestionar Perfiles</h1>
            </header>
            <p>Los campos marcados con (*) son obligatorios</p>
            <form method="post">
                <div class="ladoizquierdo">
                    <div class="numerodocumento">
                        <label class="labeldocumento"> (*)Número de Documento </label>
                        <input type="text" placeholder="Usuario" class="textodocumento"> 
                    </div>
                    <div class="numerodocumento">
                        <label class="labeldocumento"> (*)Nombre de Usuario </label>
                        <input type="text" placeholder="usuario" class="textodocumento"> 
                    </div>
                    <div class="numerodocumento">
                        <label class="labeldocumento"> (*)Confirmar Contraseña </label>
                        <input type="password" placeholder="Password" class="textodocumento"> 
                    </div>
                    <div class="numerodocumento">
                        <label class="labeldocumento"> (*)Pregunta secreta </label>
                        <input type="text" placeholder="Usuario" class="textodocumento"> 
                    </div>
                </div>
                <div class="ladoderecho">
                    <div class="contraseña">
                        <label class="labeldocumento"> (*)Perfil </label>
                        <input type="text" placeholder="Usuario" class="textodocumento">
                    </div>
                    <div class="contraseña">
                        <label class="labeldocumento"> (*)Contraseña </label>
                        <input type="text" placeholder="Usuario" class="textodocumento">
                    </div>
                    <div class="contraseña">
                        <label class="labeldocumento"> (*)Correo Electronico </label>
                        <input type="text" placeholder="Usuario" class="textodocumento">
                    </div>
                    <div class="contraseña">
                        <label class="labeldocumento"> (*)Respuesta </label>
                        <input type="text" placeholder="Usuario" class="textodocumento">
                    </div>
                </div>
                <div class="botones">
                    <a href="#" class="botoningresar">Crear</a>
                    <a href="#" class="botoningresar">Guardar</a>
                    <a href="#" class="botoningresar">Modificar</a>
                    <a href="#" class="botoningresar">Consultar</a>
                    <a href="#" class="botoningresar">Limpiar</a>
                    <a href="#" class="botoningresar">Eliminar</a>
                    <a href="#" class="botoningresar">Salir</a>
                </div>
            </form>
        </div>
    </body>
</html>
