<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html lang="es">
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="initial-scale=1, width=device-width">

        <title>Formación en diseño gráfico, publicidad
            y nuevas tecnologías de la información</title>
        <link rel="stylesheet" href="css/estilos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
        <!-- Tema opcional -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">
        <!-- JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {

                $(".modales").click(function () {

                    $("#idTipoModal").val($(this).attr("data-tipo"));

                    if (window.XMLHttpRequest) //mozilla
                    {
                        ajax = new XMLHttpRequest(); //No Internet explorer
                    } else
                    {
                        ajax = new ActiveXObject("Microsoft.XMLHTTP");
                    }

                    //$("#idTipoModal").val($(this).attr("data-tipo"));

                    tipo = $('#idTipoModal').val();

                    alert(tipo);

                    $.ajax({
                        //Usamos GET ya que recibimos.
                        type: 'GET',
                        url: '/homeController/modales.htm?idTipo=' + tipo,
                        success: function (data) {

//                            //Recogemos los datos del combo y los pasamos a objetos Entidad  
//                            var clienteEntidad = JSON.parse(data);
//                            //Identificamos el combo
//                            select = document.getElementById('comboClientes');
//                            //Añadimos la opcion Seleccionar al combo
//                            var opt = document.createElement('option');
//                            opt.value = 0;
//                            opt.innerHTML = "Seleccionar";
//                            select.appendChild(opt);
//
//                            //Lo vamos cargando
//                            clienteEntidad.forEach(function (valor, indice) {
//                                //Cada objeto esta en String y lo pasmoa a Cliente
//                                var clienteEntidad2 = JSON.parse(valor);
//                                //Creamos las opciones del combo
//                                var opt = document.createElement('option');
//                                //Guardamos el id en el value de cada opcion
//                                opt.value = clienteEntidad2.id_entidad;
//                                //Guardamos el impuesto en el nombre de cada opcion
//                                opt.innerHTML = clienteEntidad2.distinct_code;
//                                //Añadimos la opcion
//                                select.appendChild(opt);
//                            });

                        },
                        error: function (xhr, ajaxOptions, thrownError) {
                            console.log(xhr.status);
                            console.log(xhr.responseText);
                            console.log(thrownError);
                        }
                    });



                    //var tipo = $(this).attr("data-tipo");  


                    //Con $(this).val() cogemos el value del boton, lo concatenamos a #descrip para tener el id del campo oculto con
                    //la descripcion correspondiente a esa fila. Cogemos el text de ese campo y lo añadimos al p del modal para visualizarlo
                    // $("#descripcion").text($("#descrip" + $(this).val()).text());
                    //$("#modalAulas").modal();


                });
            });         





        </script>

    </head>
    <body>

    <header>
        <div class="header-container">
            <div id="logo">
                <img src="imagenes/logo-graphic-institute.svg" alt="Logotipo Graphic Institute">
            </div>

            <h1>
                <span>Formación en desarrollo web, diseño gráfico, programación, </span> <br>
                <span>idiomas y nuevas tecnologías de la información</span>
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
                <a href="#">Home</a>
            </li>

            <li>
                <a href="cursos.htm?opcion=cargar">Cursos</a>
            </li>

            <li>
                <a href="profesores.htm?opcion=cargar">Profesores</a>
            </li>

            <li>
                <a href="#">Programación</a>
            </li>

            <li>
                <a href="#">Idiomas</a>
            </li>

            <li>
                <a href="consultas.htm?opcion=cargar">Contacto</a>
            </li>

        </ul>
    </nav>


    <main>

        <!-- Sección qué ofrecemos-->

        <input type="text" id="idTipoModal"/>

        <section class="DatosCentro">
            <h1>Mucho más que un gran <br><span>centro de formación</span></h1>

            <p>Aula VIP es un centro de formación de referencia en el mundo de la informática. Aportamos multitud de herramientas para que al finalizar tus estudios consigas cumplir tus sueños profesionales.</p>

            <!-- Lo siguiente es una fila de contenido con 2 columnas dentro -->
            <div class="Fila">	
                <div class="Columna">
                    <h2>Aulas 3.0</h2>
                    <p>8 aulas informáticas + 2 aulas blancas</p>
                    <figure>
                        <img src="imagenes/aulas-3-0.jpg" alt="Aula con equipamiento informático">
                    </figure>                   

                    <p>Todas nuestras aulas disfrutan de equipamiento informático de última generación.</p>
                    <p>
                        <!--<a href="home.htm?opcion=modales&tipo=aulas" id="modIde" name="modIde" class="modales" data-tipo="ideas" title="Más información sobre las aulas informáticas y aulas blancas" data-toggle="modal" >Más información</a>-->
                        <button id="modIde" name="modIde" data-tipo="ideas" type="button" class="modales btn btn-info modales" data-toggle="modal" data-target="#modalAulas"
                                onclick="modal()" title="Más información sobre las aulas informáticas y aulas blancas" >Más información</button>
                    </p>
                </div>

                <div class="Columna">
                    <h2>Laboratorio de ideas</h2>
                    <p>Reuniones 2 días a la semana</p>
                    <figure>
                        <img src="imagenes/laboratorio-ideas.jpg" alt="Reunión en Laboratorio de ideas">
                    </figure>
                    <p>Como alumno de Graphic Institute puedes formar parte de uno de nuestros laboratorios de ideas.</p>
                    <p>
                        <a href="#" title="Más información sobre el Laboratorio de ideas" data-toggle="modal" data-target="#modalIdeas">Más información</a>
                        <!--<a href="#" title="Más información sobre el Laboratorio de ideas">Más información</a>-->
                    </p>
                </div>

                <div class="limpiar"></div>
            </div> <!-- fin fila -->



            <!-- Lo siguiente es una fila de contenido con 2 columnas dentro -->

            <div class="Fila">	
                <div class="Columna">
                    <h2>Prácticas garantizadas</h2>
                    <p>En empresas de reconocido prestigio</p>

                    <figure>
                        <img src="imagenes/practicas.jpg" alt="Aula con equipamiento informático">
                    </figure>

                    <p>Todos nuestros alumnos pueden acceder a las prácticas en empresas.</p>
                    <p>
                        <a href="#" title="Más información sobre las prácticas garantizadas" data-toggle="modal" data-target="#modalPracticas">Más información</a>

                    </p>
                </div>

                <div class="Columna">
                    <h2>Profesorado </h2>
                    <p>De la máxima solvencia y años de experiencia</p>

                    <figure>
                        <img src="imagenes/metodologia.jpg" alt="Aula con equipamiento informático">
                    </figure>


                    <p>Nuestro profesorado está contrastado y avalado.</p>
                    <p>
                        <a href="#" title="Más información sobre el profesorado" data-toggle="modal" data-target="#modalProfesores">Más información</a>
                        <!--<a href="#" title="Más información sobre las metodología">Más información</a>-->
                    </p>
                </div>

                <div class="limpiar"></div>

            </div> <!-- fin fila -->

        </section>

        <!-- Sección cursos-->

        <section class="Cursos">
            <h1>Oferta de cursos<br><span>con descuentos</span></h1>
            <p>Elige uno de nuestros cursos especializados en diseño y desarrollo y lánzate a un apasionante mundo profesional dentro del sector de la informática</p>

            <!-- Lo siguiente es una fila de contenido con 3 columnas dentro -->
            <div class="Fila">	
                <div class="Columna">
                    <img id="oferta11" name="oferta11" src="${listaOfertas[0].imagenes}" alt="">
                    <h2 id="oferta12" name="oferta12">${listaOfertas[0].titulo}</h2>
                    <p  id="oferta13" name="oferta13">${listaOfertas[0].descripcion}</p>
                    <p>
                        <a href="#" title="Más información del curso Ilustración digital">Me gusta este curso</a>
                    </p>

                    <!-- descuento: -->
                    <p class="descuento"><b>${listaOfertas[0].descuento}%</b> de descuento</p>		
                </div>

                <div class="Columna">
                    <img id="oferta21" name="oferta21" src="${listaOfertas[1].imagenes}" alt="">

                    <h2 id="oferta22" name="oferta22">${listaOfertas[1].titulo}</h2>
                    <p id="oferta23" name="oferta23">${listaOfertas[1].descripcion}</p>
                    <p>
                        <a href="#" title="Más información del curso Maquetación gráfica">Me gusta este curso</a>
                    </p>

                    <!-- descuento: -->
                    <p class="descuento"><b>${listaOfertas[1].descuento}%</b> de descuento</p>
                </div>

                <div class="Columna">
                    <img  id="oferta31" name="oferta31"src="${listaOfertas[2].imagenes}" alt="">
                    <h2 id="oferta32" name="oferta32">${listaOfertas[2].titulo}</h2>
                    <p id="oferta33" name="oferta33">${listaOfertas[2].descripcion}</p>
                    <p>
                        <a href="#" title="Más información del curso Edición de vídeo">Me gusta este curso</a>
                    </p>

                    <!-- descuento: -->
                    <p class="descuento"><b>${listaOfertas[2].descuento}%</b> de descuento</p>
                </div>

                <div class="limpiar"></div>

            </div> <!-- fin fila -->	


            <!-- Lo siguiente es una fila de contenido con 3 columnas dentro -->
            <div class="Fila">	
                <div class="Columna">
                    <img id="oferta41" name="oferta41" src="${listaOfertas[3].imagenes}" alt="">
                    <h2 id="oferta42" name="oferta42">${listaOfertas[3].titulo}</h2>
                    <p id="oferta43" name="oferta43">${listaOfertas[3].descripcion}</p>
                    <p>
                        <a href="#" title="Más información del curso Edición de audio ">Me gusta este curso</a>
                    </p>

                    <!-- descuento: -->
                    <p class="descuento"><b>${listaOfertas[3].descuento}%</b> de descuento</p>
                </div>

                <div class="Columna">
                    <img id="oferta51" name="oferta51" src="${listaOfertas[4].imagenes}" alt="">
                    <h2 id="oferta52" name="oferta52">${listaOfertas[4].titulo}</h2>
                    <p id="oferta53" name="oferta53">${listaOfertas[4].descripcion}</p>
                    <p>
                        <a href="#" title="Más información del curso Gestión del color">Me gusta este curso</a>
                    </p>

                    <!-- descuento: -->
                    <p class="descuento"><b>${listaOfertas[4].descuento}%</b> de descuento</p>
                </div>

                <div class="Columna">
                    <img id="oferta61" name="oferta61" src="${listaOfertas[5].imagenes}" alt="">
                    <h2 id="oferta62" name="oferta62">${listaOfertas[5].titulo}</h2>
                    <p id="oferta63" name="oferta63">${listaOfertas[5].descripcion}</p>
                    <p>
                        <a href="#" title="Más información del curso Técnicas Creativas">Me gusta este curso</a>
                    </p>

                    <!-- descuento: -->
                    <p class="descuento"><b>${listaOfertas[5].descuento}%</b> de descuento</p>
                </div>

                <div class="limpiar"></div>

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
            <small>&copy; Aula VIP. Todos los derechos reservados.</small>
        </p>

    </footer>

    <!-- Modal Aulas-->
    <div id="modalAulas" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Contenido del modal -->
            <div class="modal-content">
                <div class="modal-header" style="background-color: #1ABC9C;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body" style="padding-left: 25px">
                    <h2 id="tituloModal" name="tituloModal" style="color: #1ABC9C;">Aulas 3.0</h2>
                    <p  id="subtituloModal" name="subtituloModal" style="color: #1ABC9C;">8 aulas informáticas + 2 aulas blancas</p>
                    <figure>
                        <img id="imagenModal" name="imagenModal" src="imagenes/aula.jpg" alt="Aula con equipamiento informático" style="border-radius: 80px 20px 80px 0; margin-bottom: 15px">
                    </figure>

                    <p id="textoModal" name="textoModal">Todas nuestras aulas disfrutan de equipamiento informático de última generación con Intel Core i7 8700 en Asus B150-C
                        y pantallas interactivas para la explicación docente, que permiten exponer la información de forma participativa.</p>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>                    
                </div>
            </div>
        </div>
    </div>

</body>
</html>