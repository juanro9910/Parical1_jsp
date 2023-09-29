
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.example.Medico" %>
<%@include file="datos_sesion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="" >
                <h1 style="text-align: center; padding-top: 20px">Gestion de Programas</h1>
                <a class="btn btn-success" href="index.jsp">
                    Volver
                </a>
                <br/>                
            </div>
            <%                if (lista.getMedicos().size() == 0) {
            %>
            <div class="row mt-2">
                <h3>No existen medicos</h3>
            </div>
            <%
            } else {
            %>

            <table class="table table-striped mt-2 table-bordered">
                <thead>
                    <tr>
                        <th class="col-md-1" style="text-align: center;">Codigo</th>
                        <th class="col-md-3" style="text-align: center;">Nombre</th>
                        <th class="col-md-1" style="text-align: center;">Consultorio</th>
                        <th class="col-md-1" style="text-align: center;">Especialidad</th>
                        <th class="col-md-1" style="text-align: center;">Email</th>
                        <th class="col-md-2" style="text-align: center;">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Medico pro : lista.getMedicos()) {
                    %>
                    <tr>
                        <td style="text-align: center;"><%=pro.getCodigo()%></td>
                        <td style="text-align: center;"><%=pro.getNombreMedico()%></td>
                        <td style="text-align: center;"><%=pro.getConsultorio()%></td>
                        <td style="text-align: center;"><%=pro.getEspecialidadMedico()%></td>
                        <td style="text-align: center;"><%=pro.getCorreo()%></td>
                        <td style="text-align: center;">                           
                            <a title="Ver" class="btn btn-primary" href="show.jsp?codigo=<%=pro.getCodigo()%>">
                                <i class="fa-solid fa-eye"></i>
                            </a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <%
                }
            %>
        </div>
    </body>
</html>
