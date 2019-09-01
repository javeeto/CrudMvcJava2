<%-- 
    Document   : listar
    Created on : 31/08/2019, 07:13:41 PM
    Author     : javeeto
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumno"%>
<%@page import="modelo.AlumnoDAO"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Alumnos</h1>
            <a class="btn btn-success" href="AlumnoServlet?accion=agregar">Agregar Nuevo</a>
            <table class="table table-bordered" >
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">DOCUMENTO</th>
                        <th class="text-center">NOMBRES</th>
                        <th class="text-center">APELLIDOS</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        AlumnoDAO dao = new AlumnoDAO();
                        List<Alumno> list = dao.listar();
                        Iterator<Alumno> iter = list.iterator();
                        Alumno alumnoObj = null;
                        while (iter.hasNext()) {
                            alumnoObj = iter.next();
                    %>

                    <tr>
                        <td class="text-center"><%= alumnoObj.getId()%></td>
                        <td class="text-center"><%= alumnoObj.getDocumento()%></td>
                        <td class="text-left"><%= alumnoObj.getNombres()%></td>
                        <td class="text-left"><%= alumnoObj.getApellidos()%></td>
                        <td>
                            <a class="btn btn-warning" href="AlumnoServlet?accion=editar&id=<%= alumnoObj.getId()%>">Editar</a>
                            <a class="btn btn-danger" href="AlumnoServlet?accion=eliminar&id=<%= alumnoObj.getId()%>" onclick="return confirm('Esta seguro que desea eliminar este registro');">Borrar</a>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
    </body>
</html>
