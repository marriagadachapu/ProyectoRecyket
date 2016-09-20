<%@page import="Controlador.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.Usuario"%>
<%@page import="Controlador.Telefono"%>
<%@page import="Controlador.Mail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardando Nuevo usuario</title>
    </head>
    <body>
    
            ArrayList<String> valoresUsuario = new ArrayList<String>();

           ArrayList<String> valoresMail = new ArrayList<String>();
            ArrayList<String> valoresTelefono = new ArrayList<String>();
            ArrayList<String> valoresLogin = new ArrayList<String>();
               
            Usuario us = new Usuario(valoresUsuario.get(0), valoresUsuario.get(1), valoresUsuario.get(2), valoresUsuario.get(3), valoresUsuario.get(4), valoresUsuario.get(5), valoresUsuario.get(6), Integer.parseInt(valoresUsuario.get(7)));
           Mail ma = new Mail(Integer.parseInt(valoresMail.get(0)), valoresMail.get(1));
            Telefono te = new Telefono(Integer.parseInt(valoresTelefono.get(0)), Integer.parseInt(valoresTelefono.get(1)));
            Login lo = new Login(Integer.parseInt(valoresLogin.get(0)), valoresLogin.get(1), valoresLogin.get(3));

            us.insertarUsuario();
            ma.insertarMail(Integer.parseInt(valoresMail.get(0)), valoresMail.get(1));
            te.insertarTelefono(Integer.parseInt(valoresTelefono.get(0)), Integer.parseInt(valoresTelefono.get(1)));
            lo.insertarLogin(Integer.parseInt(valoresLogin.get(0)), valoresLogin.get(1), valoresLogin.get(3));
                  
    </body>
</html>
