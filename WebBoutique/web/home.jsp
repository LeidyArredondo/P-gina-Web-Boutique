<%-- 
    Document   : home
    Created on : 9/07/2015, 07:57:22 PM
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
	<link rel="stylesheet" href="estilos.css">
	<link rel="shortcut icon" href="icono.ico" type="C:\Users\Leidy\Desktop\WebBoutique\icono.ico">
</head>
<body>
	<div class="container">
		<header>
			<h1>Boutique Black and White</h1>
			<nav class="navigation">
				<ul>
					<li><a href="#" class="color">Colección</a></li>
					<li><a href="#" class="item">Accesorios</a></li>
					<li><a href="#" class="item">Tiendas</a></li>
					<li><a href="#" class="item">Descuentos</a></li>
					<li id="cuadro"><input type="text" id="textol" placeholder="Buscar" ><a href="#" class="icon-buscar"></a></li>
				</ul>
			</nav>
			<div class="logos_header">			
				<a href="#" class="icon-chat"></a>
				<a href="#" class="icon-compra"></a>
			</div> 
			<a href="#" class="button">Ingresar</a>
		</header>
		<section>
			<article class="ima_principal"> 
				<figure>
					<img src="Imagenes/fondo2.jpg" alt="">
				</figure>
			</article>
			<article class="coleccion">
				<figure>
					<img src="Imagenes/coleccion.jpg" alt="">
				</figure>
				<h2 class="titulo_coleccion">Colección Primavera</h2>
				<a href="coleccionprimavera.html" class="ver_coleccion">Ver más</a>
			</article>
			<article class="coleccion">
				<figure>
					<img src="Imagenes/coleccion1.jpg" alt="">
				</figure>
				<h2 class="titulo_coleccion">Colección de Verano</h2>
				<a href="coleccionverano.html" class="ver_coleccion">Ver más</a>
			</article>
			<article class="coleccion">
				<figure>
					<img src="Imagenes/coleccion3.jpg" alt="">
				</figure>
				<h2 class="titulo_coleccion">Colección de Otoño</h2>
				<a href="coleccionotoño.html" class="ver_coleccion">Ver más</a>
			</article>
			<article class="coleccion">
				<figure>
					<img src="Imagenes/coleccion4.jpg" alt="">
				</figure>
				<h2 class="titulo_coleccion">Colección Casual </h2>
				<a href="coleccioncasual.html" class="ver_coleccion">Ver más</a>
			</article> 
		</section>
		<footer>
			<h2>Boutique Black and White</h2>
			<h2>Síguenos en:</h2>
			<aside>
				<a href="#" class="icon-facebook"></a>
				<a href="#" class="icon-twitter"></a>
			</aside>
		</footer>
	</div>
</body>
</html>
