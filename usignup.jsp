
<%@ include file="header.jsp"%>
	                  <%
                                                       String mm=request.getParameter("m");
                                                       if(mm!=null )
                                                       {
                                                               out.println("<h5><blink>Registration success  !! </blink></font><br></h3><br>");
                                                       }
                                               %>

<% if(request.getParameter("msg")!=null)
	{
out.println("<script>alert('Email already exist.....!')</script>");
}
if(request.getParameter("msgkey")!=null){
out.println("<script>alert('Branch Details Added Successfully ..')</script>");
}
%>
					

<form method="post" action="usignupaction.jsp"  >
  <h3 class="title-style">Users Registration<span></span></h3><center>
<H1></font></h1>
<br><br>

	<table  align="center" id="tab" width="50%">

	<tr><td>Name<br><input class="form-control"  type="text" name="uname" required ">
	<tr><td>Email<br><input class="form-control"  type="email" name="email" required ">
	<tr><td>Password<br><input class="form-control"  type="password" name="pwd" required ">
	
	<tr><td>Address<br><input class="form-control"  type="text" name="area" required ">
	<tr><td>DOB<br><input class="form-control"  type="date" name="year" required ">
					<tr><td>Tags

					<select name="tags" multiple class="form-control"  >
						<option value="NonProfit Organization" selected>NonProfit Organization
						<option value="Charitable Organization">Charitable Organization
						<option value="Cooperative">Cooperative
						<option value="Alumni Association">Alumni Association

					</select>


			<tr><td><input class="form-control"   class="form-control" type="submit"  value="Register" id="button2"/>


</tr>
</form>
</table>

<%@ include file="footer.jsp"%>
