<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");

// Cargar en tiempo de ejecuci�n el  driver JDBC
Class.forName("com.mysql.jdbc.Driver");
try{
Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "usuario", "123");
Statement miStatement=miConexion.createStatement();

String instruccionSql="INSERT INTO USUARIOS (NOMBRE, APELLIDO, USUARIO, CONTRASENA) VALUES(' "+nombre+" ',' "+apellido+" ','"+usuario+"','"+contra+"')";
miStatement.executeUpdate(instruccionSql);
out.println("Registrado con �xito");
}catch(Exception e){
	out.println("Ha habido un error"); 
}
%>
<jsp:include page="FechaActual.jsp"></jsp:include>
</body>
</html>