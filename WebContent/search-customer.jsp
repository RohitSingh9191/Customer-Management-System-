<%@ include file='navbar.jsp' %>
<html>
  <body onload="makeActive('search')">
 <form action="show-record.jsp">
  <table class='ta'>
   <tr>
    <td class='la tdp'>Enter Customer Id</td>
    <td class='tdp'><input class='tb' type='text' name='cid' required></td>
    <td class='tdp'><button class='bt'>Search Record</button></td>
   </tr>
  </table>
 </form> 
 </body>
</html>