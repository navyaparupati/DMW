

<%@ include file="header.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%
	
	
	 String m=request.getParameter("id");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Profile Updated Successfully')</script>");
                                                       }

	%>

	 				

 
	


<%

String email=request.getParameter("email");
int id=0;
Connection con=databasecon.getconnection();
	Statement st = con.createStatement();
		
	String query = "select * from Organizations where email='"+email+"' ";
	System.out.println("query==="+query);
	ResultSet rs=st.executeQuery(query);
	if(rs.next())
	{
	
%>






						<table ALIGN="CENTER" >
						<tr><TD width="20%">
						<h2><strong>Org. Name:</strong>
						<%=rs.getString("name")%><br>
<br>	<tr><TD>
						<strong>Owner Name:</strong>
						<%=rs.getString("oname")%>
					
					<br>	<tr><TD>
						<strong>Website:</strong>
									<%=rs.getString("website")%>
				
				<br>	<tr><TD>
					<strong>Address:</strong>
						<%=rs.getString("addr")%>
					
			
					
		<br>	<tr><TD>
						
					
						<strong>Year:</strong>
						<%=rs.getString("y_ear")%>
<tr><TD>
						
				
						<strong>About:</strong>
						<%=rs.getString("about")%>
					
				<br>	<tr><TD>
						<strong>Tags:</strong>
						<% for(String s: rs.getString("tags").split(";")){
						out.print(s);
				out.print("&nbsp;&nbsp;&nbsp;");
					}
									
					%>
					

						
				</table>
<br>
				
				
						
	
				
				
						
				


<%

}

%>


<h1>Posts</h1><br>
<table WIDTH=60%>
<tr><td bgcolor=#6d88a9  WIDTH="5%"> <h4>#<td bgcolor=#6d88a9  ><h4>Post




<%

Connection con1 = databasecon.getconnection();
try
{

	Statement st1 = con1.createStatement();
	String sss1 = " select * from posts where email='"+email+"'  ";
	 rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next()){
	%>
		 <tr><td><%=++i%><td><%=rs.getString(2)%>
		 

	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




</table>
<%@ include file="footer.jsp"%>