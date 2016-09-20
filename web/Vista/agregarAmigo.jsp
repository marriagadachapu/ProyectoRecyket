<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recyket</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../CSS/style.css" rel="stylesheet" type="text/css" media="screen" />
 <script type="text/javascript" src="funciones/livevalidation_standalone.js"></script>


</head>

<body>
       
      <form name="Index" method="post" action="sesion.jsp">
                  <%
   String usuario = new String("user");
 session.setAttribute("sesion", usuario);

%>
<div id="bg1">
	<div id="header">
		<h1><a href="#">Portal Recyket</a></h1>
       
		
	</div>
	<!-- end #header -->
</div>
<!-- end #bg1 -->
<div id="bg2">
	<div id="header2">
		<div id="menu">
			<ul>
				<li><a href="ise.jsp">Inicio</a></li>
                <li><a href="misdatos.jsp">Mis Datos</a></li>
				<li><a href="agregarAmigo.jsp">Agregar Amigos</a></li>
                <li><a href="listamigos.jsp">Lista de Amigos</a></li>
                <li><a href="index.jsp">Salir</a></li>
				
			</ul>
		</div>
		<!-- end #menu -->
		
		<!-- end #search -->
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->
<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page">
				<div id="content">
					<div class="post">
						<div class="title">
							<h2><a href="#">Registro Amigos</a></h2>
							<p></p>
						</div>
						<div class="entry"> 
							

    





     <fieldset>
             <legend id="legend">Agregar Amigo</legend>
    <table id="tabla" align="left">
            <tr>
                <td>Nombre:</td>
                <td><input type="text" id="nombre" name="nombre"/>
                </td>
                <td> <script type="text/javascript">
		            var nombre = new LiveValidation('nombre');
		            nombre.add(Validate.Presence);
                            nombre.add( Validate.Length, { minimum: 2, maximum: 20 } );
		          </script>
                </td>
            </tr>
             <tr>
                <td>Apellido Paterno:</td>
                <td><input type="text" id="apaterno" name="apaterno"/>
                </td>
                <td><script type="text/javascript">
		            var apaterno = new LiveValidation('apaterno');
		            apaterno.add(Validate.Presence);
                            apaterno.add( Validate.Length, { minimum: 2, maximum: 20 } );
		          </script>
                </td>
             </tr>
             <tr>
                <td>Apellido Materno</td>
                <td><input type="text" id="amaterno" name="amaterno"/>
                </td>
                <td><script type="text/javascript">
		            var amaterno = new LiveValidation('amaterno');
		            amaterno.add(Validate.Presence);
                            amaterno.add( Validate.Length, { minimum: 2, maximum: 20 } );
		          </script>
                </td>
             </tr>
            
             <tr>
                <td>Telefono</td>
                <td><input type="text" id="telefono" name="telefono"/>
                </td>
             <td><script type="text/javascript">
                      var telefono = new LiveValidation('telefono');
telefono.add( Validate.Numericality, { onlyInteger: true } );
telefono.add(Validate.Presence);
telefono.add( Validate.Length, { minimum: 5, maximum: 12 } );
                          </script></td>
             </tr>
             <tr>
                 <td></td>
                     <td><select name="tipotel">
                    <option>SELECCIONAR TIPO</option>
                    <option>CASA</option>
                    <option>OFICINA</option>
                    <option>FAX</option>
                    <option>MOVIL</option>
                </select>

                  </td>
            </tr>
             <tr>
                <td>Mail</td>
                <td><input type="text" id="mail" name="mail"/></td>
             <td> <script type="text/javascript">
		            var mail = new LiveValidation('mail');
		            mail.add(Validate.Email );
                            mail.add(Validate.Presence);
		          </script>
                 </td>
             </tr>
             <tr>
                 <td></td>
                     <td><select name="tipomail">
                    <option>SELECCIONAR TIPO</option>
                    <option>CORPORATIVO</option>
                    <option>PERSONAL</option>
                        </select>
                  </td>
            </tr>

            
             <tr>
                <td><button  type="submit">Guardar</button></td>
                <td><button type="reset">Borrar</button></td>
            </tr>


        </table>
              </fieldset>
						</div>
						<div class="meta">
							
							
						</div>
					</div>
					<div class="post">
						
						<div class="entry">
							
						</div>
						
					</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							<h2>Menu</h2>
						<p>.<a href="sesion.jsp">Inicio</a></p>
   					    <p>.<a href="misdatos.jsp">Mis Datos</a></p>
                        <p>.<a href="agregarAmigo.jsp">Agregar Amigos</a></p>
                        <p>.<a href="listamigos.jsp">Lista de Amigos</a></p>
                        <p>.<a href="index.jsp">Salir</a></p>
						</li>
					
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both; height: 40px;">&nbsp;</div>
			</div>
			<!-- end #page -->
		</div>
	</div>
</div>
<!-- end #bg3 -->
<div id="footer">
	
</div>
<!-- end #footer -->
</form>
</body>
</html>
