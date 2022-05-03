<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="oheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Success..</blink></font>");
                                                       }
                                               %>

<h1>Send Notificaions</h1><br><br>
	<TABLE id="tab" width="50%">
<form method="post" action="sendnoti2.jsp">
    <tr><td><input required  type="text" class="form-control" name="tit" placeholder="Enter Title" size="40">
	
    <tr><td><input required  type="text"class="form-control"  name="cont" placeholder="Enter Content" size="40">
            <input required  class="form-control" type="submit" value="   Send  ">
</form>
</table>


<br><br><br>

<%@ include file="footer.jsp"%>