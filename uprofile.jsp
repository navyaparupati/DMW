

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






						<table ALIGN="CENTER" id="tab">
						<tr><th width="20%">
						<b>Name<td></b>
						<%=rs.getString("name")%>
											<tr><th>
					
					<tr><th>
					
						<b>Address<td></b>
						<%=rs.getString("addr")%>
					
					<tr><th>
						
					
					
			<tr><th>
						
					
						<b>DOB<td></b>
						<%=rs.getString("dob")%>
<tr><th>
						
				
				
						<b>Tags<td></b>
						<%=rs.getString("tags")%>
					

						
				</table>
<br>
				
				
						
				<a href="updateuprofile.jsp"><h2>Update Profile</h2></a><br><br>
				
				
						
				
	</div>

<%

}

%>


<%@ include file="footer.jsp"%>