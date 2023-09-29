<%@page import="com.example.ListaMedicos"%>
<%

ListaMedicos lista = (ListaMedicos) session.getAttribute("lista");

if(lista == null){
    lista = new ListaMedicos();
    session.setAttribute("lista", lista);
}
%>