<%@page import="com.example.Medico" %>
<%@page import="com.example.Agenda" %>
<%@include file="datos_sesion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String msg = request.getParameter("msg");
String codigo = request.getParameter("codigo");
Medico m = lista.getMedico(codigo);
if(m == null){
    response.sendRedirect("index.jsp");
}else{
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-2 col-md-5">
            <h1 style="text-align: center">Gestion del Medico</h1>
            <h1 style="text-align: center"><%=m.getNombreMedico()%></h1>
            
            <div class="row" style ="padding: 10px">            
                <table class="table table-striped " border="1">
                    <tbody>
                        <tr>
                            <td>Codigo</td>
                            <td>
                                <%=m.getCodigo()%>
                            </td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td>
                                <%=m.getNombreMedico()%>
                            </td>
                        </tr>
                        <tr>
                            <td>Consultorio </td>
                            <td>
                                <%=m.getConsultorio()%>
                            </td>
                        </tr>
                        <tr>
                            <td>Especialidad </td>
                            <td>
                                <%=m.getEspecialidadMedico()%>
                            </td>
                        </tr>
                        <tr>
                            <td> Email </td>
                            <td>
                                <%=m.getCorreo()%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                    <center>
                        <form action="index.jsp">
                            <a title="Volver" class="btn btn-primary" href="listarMedicos.jsp">
                                <i class="fa-solid fa-arrow-left"></i>
                            </a>                           
                            <a title="Agregar Agenda" class="btn btn-success" href="addAgenda.jsp?codigo=<%=codigo%>">
                                <i class="fa-solid fa-user-plus"></i>
                            </a>
                        </form>
                    </center>
                    </td>
                    </tr>
                    </tbody>
                </table>
            </div>



            <%
                if (m.getAgenda().size() == 0) {
                    out.print("<h2>No tiene Agenda</h2>");
                } else {
            %>
            <h1 style="text-align: center">Agendas del Medico</h1>
            <table class="table table-striped" border="1">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Dia</th>
                        <th>Mes</th>
                        <th>Anho</th>
                        <th>Hora</th>
                        <th>Minuto</th>
                        <th>Descripcion</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Agenda agenda : m.getAgenda()) {
                    %>
                    <tr>
                        <td>
                            <%=agenda.getCodigo()%>
                        </td>
                        <td>
                            <%=agenda.getDia()%>
                        </td>
                        <td>
                            <%=agenda.getMes()%>
                        </td>
                        <td>
                            <%=agenda.getAnho()%>
                        </td>
                        <td>
                            <%=agenda.getHora()%>
                        </td>
                        <td>
                            <%=agenda.getMinuto()%>
                        </td>
                        <td>
                            <%=agenda.getDescripcion()%>
                        </td>
                        <td>
                            <a title="Borrar" class="btn btn-danger" href="saveAgenda.jsp?codigoAgenda=<%=agenda.getCodigo()%>&codigo=<%=m.getCodigo()%>&action=del">
                                <i class="fa-solid fa-trash"></i>
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
                if (msg != null && !msg.isEmpty()) {
            %>
            <script>
                alert("<%= msg%>");
            </script>
            <%
                }
            %>
        </div>
    </body>
</html>
<%
    }
%>
