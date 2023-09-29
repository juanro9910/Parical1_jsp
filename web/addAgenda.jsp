
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String codigo = request.getParameter("codigo");
    String msg = request.getParameter("msg");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <title>Crear Agenda</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-8 col-sm-10 mx-auto">                    
                    <h1 style="text-align: center">Agregar Curso</h1>
                    <form method="post" action="saveAgenda.jsp?codigo=<%=codigo%>&action=add">
                        <input class="form-control" name="codigoAgenda" type="text"
                               placeholder="Codigo de agenda" />
                        <br/>
                        <input class="form-control" name="dia" type="number"
                               placeholder="Día" />
                        <br/>
                        <input class="form-control" name="mes" type="number"
                               placeholder="mes" />
                        <br/>
                        <input class="form-control" name="anho" type="number"
                               placeholder="anho" />
                        <br/>
                        <input class="form-control" name="hora" type="number"
                               placeholder="hora" />
                        <br/>
                        <input class="form-control" name="minutos" type="number"
                               placeholder="minutos" />
                        <br/>
                        <input class="form-control" name="descripcion" type="text"
                               placeholder="Descripción" />
                        <br/>
                        <div class="d-flex justify-content-center gap-2">
                            <button class="btn btn-success">Crear Agenda</button>
                            <a class="btn btn-warning" href="show.jsp?codigo=<%=codigo%>">Volver</a>
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
