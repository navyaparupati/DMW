

<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>   
<h1>Organizations</h2>
<br><br>
<%@ page import="java.sql.*,databaseconnection.*"%>

<%

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from organizations where name like '%"+request.getParameter("keys")+"%'  ";
	//String sss1 = " select * from organizations  ";
	ResultSet rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next()){
	%><table border cellspacing="20"  width="100%">
		<tr><td> <h3><%=rs.getString("name")%></h3>
		<%=rs.getString("about")%>
<br>

		<a href="uviewprofile.jsp?email=<%=rs.getString("email")%>"><img src="assets/images/b1.png" width="272" height="52" border="0" alt=""></a>

		 </table>
<br><br>
	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>



 


<%@ include file="footer.jsp"%>