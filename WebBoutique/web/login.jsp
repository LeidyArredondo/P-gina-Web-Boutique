<%-- 
    Document   : login
    Created on : 9/07/2015, 08:53:22 PM
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
	<link rel="stylesheet" href="estiloslogin.css">
	<link rel="shortcut icon" href="icono.ico" type="C:\Users\Leidy\Desktop\WebBoutique\icono.ico">
</head>
<body>
	<div class= "container">
	  <header>
        <h1 class="titulo">Bienvenidos </h1>
          <h2 class="titulo">Boutique Black and White</h2>
	  </header>
	  
      <form method="post">
       <div class="usuario">
      		<label class="labelusuario"> Usuario:  </label>
      	    <input type="text" placeholder="Usuario" class="textousuario"> 
       </div>
       <div class="contraseña">
      		<span> Contraseña:  </span>
      	   <input type="password" placeholder="Password"> 
       </div>
    	<div class="botones">
      		<a href="#" class="botonvolver">Volver</a>
      		<a href="#" class="recuperar">¿Olvido su contraseña?</a>
      		<a href="#" class="botoningresar">Ingresar</a>
       	</div>
      	

      </form>
      <figure>
      		<img src="Imagenes/but.jpg">
       </figure>
	</div>
</body>