<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="oheader.jsp"%>

<%
	 String m=request.getParameter("msg");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Operation Successfully Completed !!')</script>");
                                                       }

%>
		  <head>
<style>
table, th, td {
border:0.2px solid;
}
th, td {
    padding: 5px;
    
	text-align: left;
}
</style>
</head>

<h1>Bank Details</h1><br>
<table WIDTH=100%>
<tr><td bgcolor=#6d88a9  WIDTH="5%"> <h4>#<td bgcolor=#6d88a9  ><h4>Account Type<td bgcolor=#6d88a9><h4>Rounting No<td bgcolor=#6d88a9><h4>Account No<td bgcolor=#6d88a9><h4>Account Name




<%

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from bankdetails where email='"+session.getAttribute("Organizations")+"'  ";
	ResultSet rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next()){
	%>
		 <tr><td><h4><%=++i%><td><h4><%=rs.getString(2)%><td><h4><%=rs.getString(3)%><td><h4><%=rs.getString(4)%><td><h4><%=rs.getString(5)%>
		 

	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




</table>
<br><br>
<form method="post" action="createbank.jsp">
	<input type="submit" value="Create Bank Account">
</form>
<hr>
<br><br><br><br><br>



<%@ include file="footer.jsp"%>
