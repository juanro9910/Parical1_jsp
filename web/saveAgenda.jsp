<%@page import="java.util.List"%>
<%@page import="com.example.Agenda"%>
<%@page import="com.example.Medico"%>
<%@include file="datos_sesion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%    String action = request.getParameter("action");
    String msg = "";

    if (action != null && action.equals("add")) {
        String codigo = request.getParameter("codigo");
        String codigoAgenda = request.getParameter("codigoAgenda");
        String paramDdia = request.getParameter("dia");
        String paramMes = request.getParameter("mes");
        String paramAnho = request.getParameter("anho");
        String paramHora = request.getParameter("hora");
        String paramMinutos = request.getParameter("minutos");
        String descripcion = request.getParameter("descripcion");

        int dia = Integer.parseInt(paramDdia);
        int mes = Integer.parseInt(paramMes);
        int anho = Integer.parseInt(paramAnho);
        int hora = Integer.parseInt(paramHora);
        int minutos = Integer.parseInt(paramMinutos);

        Medico p = lista.getMedico(codigo);

        boolean agendaExist = false;
        boolean agendaOcupada = false;

        for (Agenda agenda : p.getAgenda()) {
            if (agenda.getCodigo().equals(codigoAgenda)) {
                agendaExist = true;
                break;
            }
        }

        if (agendaExist) {
            msg = "Ya existen un Agenda con ese codigo";
            response.sendRedirect("addAgenda.jsp?msg=" + msg + "&codigo=" + codigo);
        } else {

        for (Agenda agenda : p.getAgenda()) {
                if (agenda.getHora() == hora && agenda.getDia() == dia && agenda.getMes() == mes && agenda.getAnho() == anho && agenda.getMinuto() == minutos) {
                    agendaOcupada = true;
                    break;
                }
            }

            if (agendaOcupada) {
                msg = "Ya existen un Agenda registrada para esa hora y dia";
                response.sendRedirect("addAgenda.jsp?msg=" + msg + "&codigo=" + codigo);
            } else {
                Agenda agenda = new Agenda(codigoAgenda, dia, mes, anho, hora, minutos, descripcion);
                p.getAgenda().add(agenda);
                response.sendRedirect("show.jsp?codigo=" + codigo);
            }
        }

    } else if (action != null && action.equals("del")) {
        String codigo = request.getParameter("codigo");
        String codigoAgenda = request.getParameter("codigoAgenda");

        Medico p = lista.getMedico(codigo);

        List<Agenda> agenda = p.getAgenda();
        
        if (agenda.size() == 1){
            msg = "No se puede eliminar la agenda porque siempre debe haber una agenda";
            response.sendRedirect("show.jsp?codigo=" + codigo + "&msg=" + msg);
        } else{
            
        for (int i = 0; i < agenda.size(); i++) {

                if (codigoAgenda.equals(agenda.get(i).getCodigo())) {
                    msg = "La Agenda fue eliminada!!";
                    agenda.remove(i);
                    break;
                }

            }
            response.sendRedirect("show.jsp?codigo=" + codigo + "&msg=" + msg);
        }
    }
%>