<%@ include file='navbar.jsp' %>
<html>
  <body onload="makeActive('delete')">
 <form action="delete-customerRecord.jsp">
  <table class='ta'>
   <tr>
    <td class='la tdp'>Enter Customer Id</td>
    <td class='tdp'><input class='tb' type='text' name='cid' required></td>
    <td class='tdp'><button class='bt'>Delete Record</button></td>
   </tr>
  </table>
 </form> 
 </body>
</html>