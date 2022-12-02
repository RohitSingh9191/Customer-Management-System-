<%@page import="java.sql.*" %>
<% 
Connection cn=null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost/crud","root","12345");
}
catch(Exception ex){
	out.println(ex);
}

%>