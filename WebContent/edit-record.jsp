<%@ include file='navbar.jsp' %>
<html>
  <body onload="makeActive('edit')">
 <form action="edit-customer.jsp">
  <table class='ta'>
   <tr>
    <td class='la tdp'>Enter Customer Id</td>
    <td class='tdp'><input class='tb' type='text' name='cid' required></td>
    <td class='tdp'><button class='bt'>Edit Record</button></td>
   </tr>
  </table>
 </form> 
 </body>
</html>