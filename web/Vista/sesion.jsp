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
                            <li><a href="sesion.jsp">Inicio</a></li>
                            <li><a href="misdatos.jsp">Mis Datos</a></li>
                            <li><a href="agregarProducto.jsp">Agregar Producto</a></li>
                            <li><a href="listaProducto.jsp">Lista de Productos</a></li>
                            <li><a href="index.jsp">Salir</a></li>
				
			</ul>
		</div>
		<!-- end #menu -->
		
		<!-- end #search -->
	</div>
	<!-- end #header2 -->
</div>
<!-- end #bg2 -->    
     <form name="Index" method="post" action="sesion.jsp">
                 <%
   String usuario = new String("user");
 session.setAttribute("sesion", usuario);

%>


<div id="bg3">
	<div id="bg4">
		<div id="bg5">
			<div id="page">
				<div id="content">
					<div class="post">
						<div class="title">
							<h2><a href="#">Mi Sesión</a></h2>
							
                                                      
						</div>
						<div class="entry"> 

                                                    		 <fieldset>
             <legend id="legend">Mi Sesión</legend>
                                                    escribir detos auqi
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
                                                        <p>.<a href="agregarProducto.jsp">Agregar Producto</a></p>
                                                        <p>.<a href="listaProducto.jsp">Lista de Productos</a></p>
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
