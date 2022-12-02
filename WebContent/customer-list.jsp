<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
<html>
  <body onload="makeActive('list')">
  <div class='container'>
   <div class='card col-md-12'>
    <div class='card-body'>
     <table class='table table-hover'>
      <%
      Statement st=cn.createStatement();
      ResultSet rst=st.executeQuery("select * from customerinfo");
      %>
      <thead>
       <tr>
        <th>Customer Id</th><th>First name</th><th>Last name</th>
        <th>Address</th><th>Phone number</th><th>Email id</th>
        <th style='color:magenta'>Action</th>
       </tr>
      </thead>
      <tbody>
       <%
       while(rst.next())
       {
    	   %>
    	   <tr>
    	    <td><%=rst.getString(1)%></td><td><%=rst.getString(2)%></td>
    	    <td><%=rst.getString(3)%></td><td><%=rst.getString(4)%></td>
    	    <td><%=rst.getString(5)%></td><td><%=rst.getString(6)%></td>
    	    <td>
    	    	<a href='edit-customer.jsp?cid=<%=rst.getString(1)%>'>Edit |</a>
    	    	<a href='delete-record.jsp?cid=<%=rst.getString(1)%>' onclick='return confirm("Are you sure to delete?")'>Delete</a>
    	    </td>
    	   </tr>
    	   <%
       }
       %>
      </tbody>
     </table>
    </div>
   </div>
  </div>
 </body>
</html>