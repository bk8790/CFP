<%@ include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="java. lang. Math.*"%>
<%@page import="databaseconnection.*"%>


<%
String type= request.getParameter("type");
String cost= request.getParameter("cost");

 
try
{
ResultSet rs=null;
int id=0;

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
PreparedStatement ps=con.prepareStatement("insert into feedetails(feetype,cost) values(?,?)");
ps.setString(1,type);
ps.setString(2,cost);
ps.executeUpdate();
response.sendRedirect("addfee.jsp?msg=success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
