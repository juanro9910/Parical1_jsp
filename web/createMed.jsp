
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="datos_sesion.jsp" %>
<!DOCTYPE html>
<%    String msg = request.getParameter("msg");
    String codigo = request.getParameter("codigo");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <div class="container justify-content-center">
            <div class="row">
                <div class="col-lg-4 col-md-8 col-sm-10 mx-auto">

                    <h1 style="text-align: center">Crear Medico</h1>
                    <form method="post" action="consultar.jsp?action=add">
                        <input class="form-control mt-2" name="codigoMedico" type="text"
                               value="<%=codigo%>" readonly="readonly" />
                        <br/>
                        <input class="form-control" name="nombre" type="text"
                               placeholder="Nombre del Medico" />
                        <br/>
                        <input class="form-control" name="consultorio" type="number"
                               placeholder="Consultorio Medico" />
                        <br/>
                        <input class="form-control" name="especialidad" type="text"
                               placeholder="Especialidad Medico" />
                        <br/>
                        <input class="form-control" name="email" type="email"
                               placeholder="Email Medico" />
                        <br/>
                        <div class="d-flex justify-content-center gap-2">
                            <button class="btn btn-success">Crear Medico</button>
                            <a class="btn btn-warning" href="index.jsp">Volver</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <%            if (msg != null && !msg.isEmpty()) {
    %>
    <script>
        alert("<%= msg%>");
    </script>
    <%
        }
    %>
</html>
