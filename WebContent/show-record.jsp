<%@ include file='conn.jsp' %>
<html>
  <body onload="makeActive('search')">
  <%
   String query="select * from customerinfo where cid=?";
   PreparedStatement ps=cn.prepareStatement(query);
   ps.setString(1,request.getParameter("cid"));
   ResultSet rst=ps.executeQuery();
   if(rst.next())
   {
	   %>
	   <%@ include file='navbar.jsp' %>
	   <table border='1' class='tar las'>
	    <tr style='background-color:orange;color:white;font-size:1.8vw'>
	     <td colspan="2" align="center">Customer Details</td>
	    </tr>
	    <tr>
	     <th align="left">Customer id</th>
	     <td><%=rst.getString(1)%></td>
	    </tr>
	    <tr>
	     <th align="left">First name</th>
	     <td><%=rst.getString(2)%></td>
	    </tr>
	     <tr>
	     <th align="left">Last name</th>
	     <td><%=rst.getString(3)%></td>
	    </tr>
	     <tr>
	     <th align="left">City</th>
	     <td><%=rst.getString(4)%></td>
	    </tr>
	     <tr>
	     <th align="left">Phone number</th>
	     <td><%=rst.getString(5)%></td>
	    </tr>
	     <tr>
	     <th class='lb' align="left">Email Id</th>
	     <td class='lb'><%=rst.getString(6)%></td>
	    </tr>
	   </table>
	   <%
	   return;
   }
  %>
  <jsp:include page="search-customer.jsp" />
  <div class='dvv'>
   <label class='lah' style='color:red'>
   		Customer with id <%=request.getParameter("cid")%> not found
    </label>
  </div>
 </body> 
</html>