<%@ include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="java. lang. Math.*"%>
<%@page import="databaseconnection.*"%>


<%
String bkname= request.getParameter("bkname");
String cost= request.getParameter("cost");

 
try
{
ResultSet rs=null;
int id=0;

Connection con=databasecon.getconnection();
Statement st=con.createStatement();

ResultSet rst=st.executeQuery("select *from library where bkname='"+bkname+"' ");

if(!rst.next()){
PreparedStatement ps=con.prepareStatement("insert into library(bkname,rent) values(?,?)");
ps.setString(1,bkname);
ps.setString(2,cost);
ps.executeUpdate();
response.sendRedirect("addlibrary.jsp?msg=success");
}
else{

response.sendRedirect("addlibrary.jsp?msg2=duplicate");
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
