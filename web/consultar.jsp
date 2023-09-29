
<%@page import="com.example.Medico" %>
<%@include file="datos_sesion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%    String action = request.getParameter("action");

    if (action != null && action.equals("consultar")) {

        String codigo = request.getParameter("codigoMedico");
        String msg = "";

        if (codigo.equals("")) {
            msg = "Por favor ingrese el codigo del Medico";
            response.sendRedirect("index.jsp?msg=" + msg);
        }else{            
        boolean medicoExistente = false;

            for (Medico med : lista.getMedicos()) {
                if (med.getCodigo().equals(codigo)) {
                    medicoExistente = true;
                    break;
                }
            }
            if (medicoExistente) {
                msg = "El medico ya existe";
                response.sendRedirect("show.jsp?codigo=" + codigo + "&msg=" + msg);
            } else {
                msg = "El medico con código: " + codigo +" no existe, por favor creelo.";
                response.sendRedirect("createMed.jsp?codigo=" + codigo + "&msg=" + msg);
            }
        }
    } else if (action != null && action.equals("add")) {
        String msg = "";
        String codigo = request.getParameter("codigoMedico");
        String nombre = request.getParameter("nombre");
        String consultorio = request.getParameter("consultorio");
        String especialidad = request.getParameter("especialidad");
        String email = request.getParameter("email");

        int paramConsultorio = Integer.parseInt(consultorio);

        boolean medicoExistente = false;

        for (Medico med : lista.getMedicos()) {
            if (med.getCodigo().equals(codigo)) {
                medicoExistente = true;
                break;
            }
        }
        if (medicoExistente) {
            msg = "El codigo del medico ya existe";
            response.sendRedirect("createMed.jsp?msg=" + msg + "&codigo" + codigo);
        } else {
            Medico medico = new Medico(codigo, nombre, paramConsultorio, especialidad, email);
            lista.addMedico(medico);
            response.sendRedirect("listarMedicos.jsp");
        }
    }

%>
