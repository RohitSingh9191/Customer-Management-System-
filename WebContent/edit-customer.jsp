<%@ include file="navbar.jsp" %>
<%@ include file="conn.jsp" %>
<html>
  <body >
  <%
  String query="select * from customerinfo where cid=?";
  PreparedStatement ps=cn.prepareStatement(query);
  ps.setString(1,request.getParameter("cid"));
  ResultSet rst=ps.executeQuery();
  rst.next();
  %>
  <div class='container'>
   <div class='card col-md-10'>
    <div class='card-body'>
     <form action="edit-customerRecord.jsp" method="post">
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='cid' class='la'>Customer id</label>
        <input type='text' readonly value='<%=rst.getString(1)%>' name='cid' id='cid' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-5'>
        <label for='firstname' class='la'>Edit first name</label>
        <input type='text' value='<%=rst.getString(2)%>' name='firstname' id='firstname' class='form-control la' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='lastname' class='la'>Edit last name</label>
        <input type='text' value='<%=rst.getString(3)%>' name='lastname' id='lastname' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-5'>
        <label for='address' class='la'>Edit address</label>
        <input type='text' value='<%=rst.getString(4)%>' name='address' id='address' class='form-control la' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='phone' class='la'>Edit phone number</label>
        <input type='text' value='<%=rst.getString(5)%>' name='phone' id='phone' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='email' class='la'>Edit email id</label>
        <input type='text' value='<%=rst.getString(6)%>' name='email' id='email' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-10'>
         <button class='btn btn-primary'>Update Record</button>
       </div>
      </div>
     </form>
    </div>
   </div>
  </div>
 </body>
</html>