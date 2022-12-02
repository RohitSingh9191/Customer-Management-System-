
<%@ include file="conn.jsp"%>
<%@ include file="navbar.jsp" %>


<html>
 <body>
  <%
  try{

		String query="insert into customerinfo values(?,?,?,?,?,?)";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1,request.getParameter("cid"));
		ps.setString(2,request.getParameter("firstname"));
		ps.setString(3,request.getParameter("lastname"));
		ps.setString(4,request.getParameter("address"));
		ps.setString(5,request.getParameter("phone"));
		ps.setString(6,request.getParameter("email"));

		ps.executeUpdate();
	
	  
  }
  catch(Exception ex){
	  out.println(ex);
  }
  %>
  <div class='dv'>
  <label class='lah'>Customer has been Added successfully</label>
  </div> 
 </body>
</html>