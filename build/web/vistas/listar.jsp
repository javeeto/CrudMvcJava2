<%-- 
    Document   : listar
    Created on : 31/08/2019, 07:13:41 PM
    Author     : javeeto
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumno"%>
<%@page import="modelo.AlumnoDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:useBean id="alumnoBean" scope="session" class="controlador.AlumnoBean" />
<jsp:setProperty name="alumnoBean" property="luckyNum" value="10" />
<jsp:getProperty name="alumnoBean" property="luckyNum" /> 

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
                    <c:forEach var="alumnoFila" begin="0" items="${alumnoBean.alumnos}">
                        <tr>
                            <td class="text-center">${alumnoFila.id}</td>
                            <td class="text-center">${alumnoFila.documento}</td>
                            <td class="text-left">${alumnoFila.nombres}</td>
                            <td class="text-left">${alumnoFila.apellidos}</td>
                            <td>
                                <a class="btn btn-warning" href="AlumnoServlet?accion=editar&id=${alumnoFila.id}">Editar</a>
                                <a class="btn btn-danger" href="AlumnoServlet?accion=eliminar&id=${alumnoFila.id}" onclick="return confirm('Esta seguro que desea eliminar este registro');">Borrar</a>
                            </td>
                        </tr>                    
                    </c:forEach>                    

                </tbody>
            </table>
        </div>
    </body>
</html>
