<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('add')">
  <div class='container'>
   <div class='card col-md-10'>
    <div class='card-body'>
     <form action="save-record.jsp" method="post">
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='cid' class='la'>Enter Customer Id</label><span> *</span>
        <input type='text' name='cid' id='cid' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-5'>
        <label for='firstname' class='la'>Enter First Name</label><span> *</span>
        <input type='text' name='firstname' id='firstname' class='form-control la' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='lastname' class='la'>Enter Last Name</label><span> *</span>
        <input type='text' name='lastname' id='lastname' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-5'>
        <label for='address' class='la'>Enter Address</label><span> *</span>
        <input type='text' name='address' id='address' class='form-control la' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='phone' class='la'>Enter Phone Number</label><span> *</span>
        <input type='text' name='phone' id='phone' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='email' class='la'>Enter Email Id</label><span> *</span>
        <input type='text' name='email' id='email' class='form-control la' required>
       </div>
      </div>
      <div class='row'>
       <div class='form-group col-md-10'>
         <button class='btn btn-primary'>Save Record</button>
       </div>
      </div>
     </form>
    </div>
   </div>
  </div>
 </body>
</html>