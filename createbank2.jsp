

<%@page import="java.sql.*,java.util.*,java.text.*"%>

<%@page import="databaseconnection.*"%>
<%
String at= request.getParameter("at");
String rn= request.getParameter("rn");
String an= request.getParameter("an");
String aname= request.getParameter("aname");
String email=(String)session.getAttribute("Organizations");
try
{
ResultSet rs=null;

Connection con=databasecon.getconnection();
	
	
PreparedStatement ps=con.prepareStatement("insert into bankdetails(acc_type, rounting, acc_no, acc_name, email) values(?,?,?,?,?)");


ps.setString(1,at);
ps.setString(2,rn);
ps.setString(3,an);
ps.setString(4,aname);
ps.setString(5,email);
ps.executeUpdate();

response.sendRedirect("createbank.jsp?m=succ");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>

