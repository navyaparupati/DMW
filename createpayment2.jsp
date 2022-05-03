

<%@page import="java.sql.*,java.util.*,java.text.*"%>

<%@page import="databaseconnection.*"%>
<%
String cn= request.getParameter("cn");
String em= request.getParameter("em");
String ey= request.getParameter("ey");
String cvv= request.getParameter("cvv");
String email=(String)session.getAttribute("users");
try
{
ResultSet rs=null;

Connection con=databasecon.getconnection();
	
	
PreparedStatement ps=con.prepareStatement("insert into paymentmethods(cardnum, cvv, exp_month, exp_year, email) values(?,?,?,?,?)");


ps.setString(1,cn);
ps.setString(2,cvv);
ps.setString(3,em);
ps.setString(4,ey);
ps.setString(5,email);
ps.executeUpdate();

response.sendRedirect("createpayment.jsp?m=succ");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>

