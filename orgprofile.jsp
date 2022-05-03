

<%@ include file="oheader.jsp"%>
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

String email=(String)session.getAttribute("Organizations");
int id=0;
Connection con=databasecon.getconnection();
	Statement st = con.createStatement();
		
	String query = "select * from Organizations where email='"+email+"' ";
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
						<b>Owner Name<td></b>
						<%=rs.getString("oname")%>
					
					
					<tr><th>
					
						<b>Address<td></b>
						<%=rs.getString("addr")%>
					
					<tr><th>
						
					
						<b>Website<td></b>
									<%=rs.getString("website")%>
			
					
			<tr><th>
						
					
						<b>Year<td></b>
						<%=rs.getString("y_ear")%>
<tr><th>
						
				
						<b>About<td></b>
						<%=rs.getString("about")%>
					<tr><th>
						
				
						<b>Tags<td></b>
						<%=rs.getString("tags")%>
					

						
				</table>
<br>
				
				
						
				<a href="updateoprofile.jsp"><h2>Update Profile</h2></a><br><br>
				
				
						
				
	</div>

<%

}

%>


<%@ include file="footer.jsp"%>