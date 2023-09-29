
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.example.Medico" %>
<%@include file="datos_sesion.jsp" %>
<!DOCTYPE html>
<%    String msg = request.getParameter("msg");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

        <title>Medicos</title>
    </head>
    <body>
        <div class="container justify-content-center">
            <div class="row">
                <div class="col-lg-4 col-md-8 col-sm-10 mx-auto">
                    <h1 style="text-align: center">Consultar Medico</h1>
                    <form method="post" action="consultar.jsp?action=consultar">
                        <input class="form-control mt-2" name="codigoMedico" type="text"
                               placeholder="Código del Medico" />
                        <br/>                        
                        <div class="d-flex justify-content-center gap-2">
                            <button class="btn btn-success">Consultar medico</button>
                            <a href="listarMedicos.jsp" class="btn btn-info"> Listar Medicos</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%            if (msg != null && !msg.isEmpty()) {
        %>
        <script>
            alert("<%= msg%>");
        </script>
        <%
            }
        %>

    </body>
</html>
