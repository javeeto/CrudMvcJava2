<%-- 
    Document   : editar
    Created on : 31/08/2019, 07:14:04 PM
    Author     : javeeto
--%>

<%@page import="modelo.Alumno"%>
<%@page import="modelo.AlumnoDAO"%>
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
                <%
                    AlumnoDAO dao = new AlumnoDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idalumno"));
                    Alumno alumnoObj = (Alumno) dao.list(id);
                %>
                <h1>Modificar Alumno</h1>
                <form action="AlumnoServlet" name="AlumnoForm" id="AlumnoForm" method="post">
                    ID:<br>
                    <input class="form-control" type="text"  id="txtDocumento" name="txtDocumento" value="<%= alumnoObj.getDocumento()%>"><br>
                    Nombres:<br>
                    <input class="form-control" type="text" id="txtNombres" name="txtNombres" value="<%= alumnoObj.getNombres()%>"><br>
                    Apellidos:<br>
                    <input class="form-control" type="text" id="txtApellidos" name="txtApellidos" value="<%= alumnoObj.getApellidos()%>"><br>
                    Genero:<br>
                    <select name="intGenero"  class="form-control">
                        <%
                            String generos[] = {"Masculino", "Femenino"};
                            for (int i = 0; i < generos.length; i++) {
                                 String selected = "";
                            
                                if ((i+1) == alumnoObj.getGenero()) {
                                    selected = "selected";
                                } else {
                                    selected = "";

                                }
                            
                        %>
                        <option value="<%= (i+1)%>" <%= selected%>><%= generos[i]%></option>
                        <% }
                        %>
                        
                    </select>
                    Fecha Nacimiento:<br>
                    <input class="form-control" type="text" id="txtFechanacimiento" name="txtFechanacimiento" value="<%= alumnoObj.getFechanacimiento()%>"><br>
                    <input type="hidden" name="txtId" value="<%= alumnoObj.getId()%>"><br>
                    <input  class="btn btn-primary" type="submit" name="accion" value="Actualizar"><br>
                </form> 
            </div>

        </div>
    </body>
</html>
