<%@page import="java.sql.*,java.util.*,java.text.*"%>

<%@page import="databaseconnection.*"%>
<%
String uname= request.getParameter("uname");
String email= request.getParameter("email");
String pwd= request.getParameter("pwd");
String addr= request.getParameter("area");
String dob= request.getParameter("year");
String[] tags= request.	getParameterValues("tags");

String tt="";
for(String t:tags){
tt=t+";"+tt;
}
out.println(tt);

try
{
ResultSet rs=null;

Connection con=databasecon.getconnection();
	
	
PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?)");

ps.setString(1,email);
ps.setString(2,uname);
ps.setString(3,pwd);
ps.setString(4,addr);
ps.setString(5,dob);
ps.setString(6,tt);

ps.executeUpdate();

response.sendRedirect("usignup.jsp?m="+email);
//out.print("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>

