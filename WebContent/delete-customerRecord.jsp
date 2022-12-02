<%@ include file="conn.jsp"%>
<%@ include file="navbar.jsp" %>


<html>
 <body >
  <%
  String cid=request.getParameter("cid");
  try{

		String query="delete from customerinfo where cid=?";
		PreparedStatement ps=cn.prepareStatement(query);
		ps.setString(1,request.getParameter("cid"));
	   
	    int n=ps.executeUpdate();
		if(n>=1){
		%>
		
		 <div class='lah'>
		  <h2 style='color:green; text-align: center;'>Customer Record with Id <%=cid %> has been deleted</h2>
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
  catch(Exception ex){
	  out.println(ex);
  }
  %>
  
 </body>
</html>