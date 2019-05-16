<%-- 
    Document   : consultas
    Created on : 15-may-2019, 16:37:32
    Author     : Tarde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">

	<meta name="viewport" content="initial-scale=1, width=device-width">

	<title>Formación en diseño gráfico, publicidad
y nuevas tecnologías de la información</title>
	<link rel="stylesheet" href="css/estilos.css">

</head>
<body>

<header>
	<div class="header-container">
		<div id="logo">
			<img src="imagenes/logo-graphic-institute.svg" alt="Logotipo Graphic Institute">
		</div>

		<h1>
			<span>Formación en diseño gráfico, publicidad</span> <br>
			<span>y nuevas tecnologías de la información</span>
		</h1>

		<!-- redes sociales -->
		<div id="redes-sociales">
			<a href="#">
				<img src="imagenes/facebook.png" alt="Facebook">
			</a>

			<a href="#"><img src="imagenes/twitter.png" alt="Twitter"></a>
			<a href="#"><img src="imagenes/youtube.png" alt="Youtube"></a>
		</div>
	</div> 	<!-- fin header-container -->

</header>

<nav>
		<!-- enlaces principales-->
		<ul>
			<li>
				<a href="index.htm">Home</a>
			</li>

			<li>
				<a href="#">Diseño gráfico</a>
			</li>

			<li>
				<a href="#">Video y sonido</a>
			</li>

			<li>
				<a href="#">Publicidad y creatividad</a>
			</li>

			<li>
				<a href="#">Talleres</a>
			</li>

			<li>
				<a href="#">Consultas</a>
			</li>

			<li>
				<a href="#">Preinscripciones</a>
			</li>
		</ul>
	</nav>
 

<main>
	
	<!-- Sección consultas-->

	<section class="consultas">

		<aside class="mapa">
			
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3042.8779033146066!2d-3.7348845848011303!3d40.300669870614186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4220901665e7c9%3A0xba00ff2229da4a5f!2sCalle+Do%C3%B1a+Romera%2C+3%2C+28901+Getafe%2C+Madrid!5e0!3m2!1ses!2ses!4v1491407102854" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>

		</aside>



		<h1>Consultas</h1>

		<p>Si tienes cualquier duda sobre nuestros cursos puedes completar el siguiente formulario. Para otras consultas contacta con nosotros mediante el teléfono o correo electrónico que figura más abajo.</p>

			<div class="Fila-consultas">	
				<div class="Columna-consultas">
					<h2>Formulario de consulta sobre cursos</h2>
					<p>(Los campos marcados con un <span class="rojo">*</span>son obligatorios)</p>
					
					<form action="http://cgi.digitarts.net/FormMail.pl" method="get" name="consulta" id="consulta-envio">

					<input type="hidden" name="recipient" value="ignaciopb01@gmail.com"> 
					<input type="hidden" name="subject" value="Consulta pagina web"> 
					<!-- <input type="hidden" name="redirect" value="http://pagina de agradecimiento...">  -->

					<div class="FilaFormulario">
						<label for="nombre-usuario">Nombre: <span class="rojo">*</span></label>
						<input class="caja" type="text" name="nombre" id="nombre-usuario" placeholder="Tu nombre" required>
					</div>

					<div class="FilaFormulario">
						<label for="email-usuario">Correo electrónico: <span class="rojo">*</span></label>
						<input class="caja" type="email" name="email-usuario" id="email-usuario" placeholder="nombre@dominio.es" required>
					</div>

					<div class="FilaFormulario">
						<label for="tel-usuario">Teléfono: <span class="rojo">*</span></label>
						<input type="tel" name="tel-usuario" id="tel-usuario" placeholder="000 00 00 00" pattern="[0-9]{9,14}" required>
					</div>

					<div class="FilaFormulario">
						<label for="preferencia-viaje">Curso en el que estás interesado:</label>
						<select name="preferencia-viaje" id="preferencia-viaje" required>
							<option value="" selected>Elige curso:</option>	
							<option value="ilustracion">Ilustración digital</option>
							<option value="maquetacion">Maquetación gráfica</option>
							<option value="video">Edición de vídeo</option>
							<option value="audio">Edición de audio</option>
							<option value="color">Gestión del color</option>
							<option value="tecnicas">Técnicas creativas</option>
						</select>
					</div>

					<div class="FilaFormulario">
						<label for="comentarios">Comentarios: </label>
						<textarea name="comentarios" id="comentarios" rows="8" placeholder="Escribe aquí tus comentarios"></textarea>
					</div>

					<div class="enlinea">
						<input type="checkbox" name="condiciones-legales" id="condiciones-legales" value="si" required>
						<label class="nonegrita" for="condiciones-legales">Acepto los terminos del contrato</label>	
					
						<a class="enlace" href="#">Leer Nota Legal</a>
					
					</div>	

					<div class="FilaFormulario">

						<input class="enviar" type="submit" value="Enviar formulario">
					
					</div>					

				</form>

				</div>

				<div class="Columna-consultas">
					<h2>Puedes consultarnos cualquier otra duda</h2>
					
					<address>
						<p>Tel. 914 25 86 90</p>
						<a href="consulta@graphicinstitute.com">consulta@graphicinstitute.com</a>
						<p>Graphic Institute - Calle Goya 16, Madrid</p>
					</address>


				</div>

				<!-- <div class="limpiar"></div> -->
			</div> <!-- fin fila -->

			


	</section>

	

</main>

<footer>
	<ul>
		<li> <a href="#">Contacto</a> </li>
		<li> <a href="#">Imágenes del centro</a> </li>
		<li> <a href="#">Premios</a> </li>
		<li> <a href="#">Bolsa de empleo</a> </li>
		<li> <a href="#">Datos legales</a> </li>
	</ul>

	<p>
		<small>&copy; Graphic Designer. Todos los derechos reservados.</small>
	</p>

</footer>	
	
</body>
</html>