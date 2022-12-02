<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
  <%
  try
  {
	String query="update customerinfo set firsname=?,lastname=?,address=?,phone=?,emailid=? where cid=?";
	PreparedStatement ps=cn.prepareStatement(query);
	ps.setString(6,request.getParameter("cid"));
	ps.setString(1,request.getParameter("firstname"));
	ps.setString(2,request.getParameter("lastname"));
	ps.setString(3,request.getParameter("address"));
	ps.setString(4,request.getParameter("phone"));
	ps.setString(5,request.getParameter("email"));
	ps.executeUpdate();
	response.sendRedirect("customer-list.jsp");
  }
  catch(Exception ex)
  {
	  out.println(ex);
  }
  %>
 