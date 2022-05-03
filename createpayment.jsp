<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="uheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Success..</blink></font>");
                                                       }
                                               %>

<h1>Create Payment Method</h1><br><br>
	<TABLE id="tab" width="50%">
<form method="post" action="createpayment2.jsp">
	
    <tr><td><input required  type="text"class="form-control"  name="cn" placeholder="Card Number" size="40">
    <tr><td><input required  type="number"class="form-control"  name="cvv" placeholder="CVV" size="40">
    <tr><td><input required  type="number"class="form-control"  name="em" placeholder="Expiry Month" size="40">
     <tr><td><input required  type="number"class="form-control"  name="ey" placeholder="Expiry Year" size="40">
         <tr><td>   <input required  class="form-control" type="submit" value="   Create  ">
</form>
</table>


<br><br><br>

<%@ include file="footer.jsp"%>