<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div id="bg2">
	<div id="header2">
		<div id="menu">
			<ul>
                                <li>
                                    <h1><a href="index.jsp">Portal Recyket</a></h1>
                                </li>
				<li><a href="ise.jsp">Iniciar Sesión</a></li>
				<li><a href="registro.jsp">Registrate</a></li>
				
			</ul>
		</div>
		<!-- end #menu -->
		
		<!-- end #search -->
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->
<form name="formregistro" method="post" action="guardarRegistro.jsp">

<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page">
				<div id="content">
					<div class="post">
						<div class="title">
							<h2>Registro Nuevo Usuario</h2>
							<p></p>
						</div>
						<div class="entry"> 
							
                                                    <div>
                                                        <input type="radio" name="Grupo1" value="1" checked="checked" title="Persona">Persona</input>
                                                        <input type="radio" name="Grupo1" value="2"  title="Sociedad">Sociedad</input>
                                                    </div> 
                                <div>&nbsp;</div>                                                   
           <fieldset>

             <legend id="legend">Ingresa Tus Datos</legend>
             <div>&nbsp;</div>  
            <div id="tabla">
                <table>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" id="usuario" name="usuario" maxlength="20"/>
                    </td>
                    
                </tr>
                <tr>
                    <td> 
                        <script type="text/javascript">
                                var usuario = new LiveValidation('usuario');
                                usuario.add(Validate.Presence);
                                 usuario.add( Validate.Length, { minimum: 5} );
                              </script>
                    </td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td><input type="password" id="contrasena1" name="contrasena1" maxlength="8"/>
                     </td>
                     <td> <script type="text/javascript">
		            var contrasena1 = new LiveValidation('contrasena1');
		            contrasena1.add(Validate.Presence);
                            
		          </script>
                    </td>
                </tr>
                 <tr>
                    <td>Comprobar contraseña:</td>
                    <td><input type="password" id="contrasena" name="contrasena" maxlength="8"/>
                     </td>
                     <td> <script type="text/javascript">
		            var contrasena = new LiveValidation('contrasena');
		            contrasena.add(Validate.Confirmation, { match: 'contrasena1'} );
                          
		          </script></td>
                </tr>

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
                    <td><input type="text" id="apaterno" name="apaterno"/></td>
                     <td> <script type="text/javascript">
		            var apaterno = new LiveValidation('apaterno');
		            apaterno.add(Validate.Presence);
                             apaterno.add( Validate.Length, { minimum: 2, maximum: 20 } );
		          </script>
                </td>
                </tr>
               
                <tr>
                    <td>Apellido Materno:</td>
                    <td><input type="text" id="amaterno" name="amaterno"/></td>
                     <td> <script type="text/javascript">
		            var amaterno = new LiveValidation('amaterno');
		            amaterno.add(Validate.Presence);
                             amaterno.add( Validate.Length, { minimum: 2, maximum: 20 } );
		          </script>
                </td>
                </tr>
               
                <tr>
                    <td id="pais">Pais:</td>
                        <td> <select name="tipopais">
                                                <option>SELECCIONE SU PAIS</option>
  

                       </select>
                  </td>
                </tr>
            <tr>
                    
            <td>Telefono:</td>

                    <td colspan="2"><input type="text" id="telefono" name="telefono" maxlength="10"/></td>

                  <td> <script type="text/javascript">
		            var telefono = new LiveValidation('telefono');
		            telefono.add(Validate.Presence);
                            telefono.add( Validate.Numericality, { onlyInteger: true } );
                            telefono.add( Validate.Length, { minimum: 5} );
                            telefono.add(Validate.Presence);
		          </script>
                </td>
                  
            </tr> 
                    <tr>
                        <td></td>
                        <td> </td>
                        <td></td>
                         <td>
                      </td>
                    </tr>



                <tr>
                    <td>Mail:</td>
                    <td colspan="2"><input type="text" id="mail" name="mail"/></td>

                         <td> <script type="text/javascript">
		            var mail = new LiveValidation('mail');
		            mail.add(Validate.Email );
                            mail.add(Validate.Presence);
		          </script>
                 </td>
                 </tr>  
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
               
                

                <tr class="right">
                    <td></td>
                    <td></td>                    
                   <td><button  type="submit">Guardar</button></td>
                    <td><button type="reset">Borrar</button></td>
                </tr>

                </table> 
            </div>
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
						<p>.<a href="ise.jsp">Iniciar Sesión</a></p>
                                                <p>.<a href="registro.jsp">Registate</a></p>
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
