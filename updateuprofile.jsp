

<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%
	
	
	 String m=request.getParameter("id");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Profile Updated Successfully')</script>");
                                                       }

	%>

	 				

 
					                 
				
						<CENTER>
						<h2 class="major">View Profile Information</h3><br>
					<CENTER>



<%

String email=(String)session.getAttribute("users");
int id=0;
Connection con=databasecon.getconnection();
	Statement st = con.createStatement();
		
	String query = "select * from users where email='"+email+"' ";
	System.out.println("query==="+query);
	ResultSet rs=st.executeQuery(query);
	if(rs.next())
	{
	
%>






						<form method="post" action="updateuprofile2.jsp">
							<table ALIGN="CENTER" id="tab">
						<tr><th width="20%">
						<b>Name<td></b>
						<input type="text" name="name" value="<%=rs.getString("name")%>">
											<tr><th>
		
					<tr><th>
					
						<b>Address<td></b>
						<input type="text" name="addr" value="<%=rs.getString("addr")%>">
					<tr><th>
						
	
					
			<tr><th>
						
					
						<b>DOB<td></b>
						<input type="date" name="year" value="<%=rs.getString("dob")%>">

					<tr><th>
						
				
						<b>Tags<td></b>
							<select name="tags" multiple class="form-control"  >
						<option value="NonProfit Organization" selected>NonProfit Organization
						<option value="Charitable Organization">Charitable Organization
						<option value="Cooperative">Cooperative
						<option value="Alumni Association">Alumni Association

					</select>
					
			<tr><th>
						
				
						<td></b>
						<input type="submit" value="Update">

						
						</form>
				</table>
<br>
				

						
				
	</div>

<%

}

%>


<%@ include file="footer.jsp"%>