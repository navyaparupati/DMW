<%@page import="java.sql.*,java.util.*,java.text.*"%>

<%@page import="databaseconnection.*"%>
<%
String tit= request.getParameter("tit");
String cont= request.getParameter("cont");
String name=(String)session.getAttribute("Organizationsname");
String email=(String)session.getAttribute("Organizations");
try
{
ResultSet rs=null;

Connection con=databasecon.getconnection();
	
	
PreparedStatement ps=con.prepareStatement("insert into notifications(org_name, email, title, content) values(?,?,?,?)");


ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,tit);
ps.setString(4,cont);

ps.executeUpdate();

response.sendRedirect("sendnoti.jsp?m=succ");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>

