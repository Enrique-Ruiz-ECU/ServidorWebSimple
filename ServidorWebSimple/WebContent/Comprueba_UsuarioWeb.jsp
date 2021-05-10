<!-- comprueba usuario-->
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

String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");

// Cargar en tiempo de ejecución el  driver JDBC
Class.forName("com.mysql.jdbc.Driver");
try{
Connection miConexion=DriverManager.getConnection("jdbc:mysql://localhost:3307/empresa", "usuario", "123");
PreparedStatement c_preparada =miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
c_preparada.setString(1,usuario);
c_preparada.setString(2,contra);
ResultSet miResultset=c_preparada.executeQuery();

if(miResultset.absolute(1))
	
	out.println("Usuario existente en la BBDD");
else
	out.println("Usuario NO existente en la BBDD");

}catch(Exception e){
	
	out.println("Ha habido un error"); 
}
%>
</body>
</html>