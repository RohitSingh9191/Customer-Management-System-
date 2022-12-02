<%@ include file="conn.jsp"%>
<%@ include file="navbar.jsp" %>


<html>
 <body>
  <%
  try{

		String query="delete from customerinfo where cid=?";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1,request.getParameter("cid"));
	    ps.executeUpdate();
	    response.sendRedirect("customer-list.jsp");
	  
  }
  catch(Exception ex){
	  out.println(ex);
  }
  %>
 </body>
</html>