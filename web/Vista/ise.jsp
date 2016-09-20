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
	</div>
	<!-- end #header2 -->
</div>

<form name="Index" method="post" action="sesion.jsp">

<!-- end #bg2 -->
<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page">
				<div id="content">
					<div class="post">
						<div class="title">
							<h2>Inicio Sesión</h2>
							<p></p>
						</div>
						<div class="entry">
                                                    <form name="Index" method="post" action="sesion.jsp"></form>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>

    <table>
       <tr> 
       <td>Usuario:</td>
                        <td><input type="text" id="user" name="usuario" maxlength="20"/></td>
                          <td> <script type="text/javascript">
		            var usuario = new LiveValidation('usuario');
		            usuario.add(Validate.Presence);
                           
		          </script>
                </td>
                     
           
        <th scope="col">&nbsp;</th>
      </tr>
      <tr>
       <td>Contraseña:</td>
                        <td><input type="password" id="contrasena" name="contrasena" maxlength="8"/></td>
            <td> <script type="text/javascript">
		            var usuario = new LiveValidation('usuario');
		            usuario.add(Validate.Presence);
                           
		          </script>
                </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>                                 
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>                                                            
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>          
        <td>
            <input class="btn" type="submit" value="Aceptar" />
            <input class="btn" type="reset" value="Borrar" />
        </td>                                   
      </tr>
</table>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
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
<!-- end #footer --></form>
</body>
</html>
