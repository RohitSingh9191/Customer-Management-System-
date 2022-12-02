<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
  <%
  String cid=request.getParameter("cid");
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
	 int n=ps.executeUpdate();
		if(n>=1){
		%>
		
		 <div class='lah'>
		  <h2 style='color:green; text-align: center;'>Customer Record with Id <%=cid %> has been Updated</h2>
		 </div>
		
		<%
			
		}
		else{
			%>
			   
		 <div class='lah'>
		  <h2 style='color:red; text-align: center;'>Customer with Id <%=cid %> dose not exist</h2>
		 </div>
			<%
		}
  }
  catch(Exception ex)
  {
	  out.println(ex);
  }
  %>
 