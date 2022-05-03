<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="oheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Success..</blink></font>");
                                                       }
                                               %>

<h1>Create Bank Account</h1><br><br>
	<TABLE id="tab" width="50%">
<form method="post" action="createbank2.jsp">
    <tr><td>

	<select name="at" class="form-control" >
		<option value="Private" selected>Private
		<option value="Public">Public
	</select>
	
    <tr><td><input required  type="number"class="form-control"  name="rn" placeholder="Rounting Number" size="40">
    <tr><td><input required  type="number"class="form-control"  name="an" placeholder="Accout Number" size="40">
    <tr><td><input required  type="text"class="form-control"  name="aname" placeholder="Account Name" size="40">
         <tr><td>   <input required  class="form-control" type="submit" value="   Create  ">
</form>
</table>


<br><br><br>

<%@ include file="footer.jsp"%>