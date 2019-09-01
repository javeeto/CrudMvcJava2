<%-- 
    Document   : agregar
    Created on : 31/08/2019, 07:13:16 PM
    Author     : javeeto
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/alumnoForm.css" rel="stylesheet" type="text/css"/>
         <script src="js/jquery/jquery-3.4.1.js"></script>
         <script src="js/jquery/jquery.validate.js"></script>
         <script src="js/jquery/localization/messages_es.js"></script>
         <script src="js/jquery/additional-methods.js"></script>
         <script src="js/alumnoForm.js"></script>        
        <title>JSP Page</title>
    </head>
    <body>
        <div id="respuesta" ></div>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Alumno</h1>
                <form action="AlumnoServlet" name="AlumnoForm" id="AlumnoForm" method="post">
                    ID:<br>
                    <input class="form-control" type="text" id="txtDocumento" name="txtDocumento"><br>
                    Nombres:<br>
                    <input class="form-control" type="text" id="txtNombres" name="txtNombres"><br>
                    Apellidos:<br>
                    <input class="form-control" type="text" id="txtApellidos" name="txtApellidos"><br>
                    Genero:<br>
                    <select id="intGenero" id="intGenero" name="intGenero" class="form-control">

                    </select>
                    Fecha Nacimiento:<br>
                    <input class="form-control" type="text" id="txtFechanacimiento" name="txtFechanacimiento"><br>
                    
                    <input class="btn btn-primary" type="submit" name="accion" value="Guardar"><br>
                </form>    
            </div>

        </div>
    </body>
</html>
