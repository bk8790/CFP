<%@ include file="aheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%

//String status= request.getParameter("status");
String packname= request.getParameter("packname");
String pid= request.getParameter("pid");

try
{
ResultSet rs=null;
int id=0;
int i=0;

String str="PID00";
Connection con=databasecon.getconnection();
	
		Statement st=con.createStatement();
		String qry="select max(id) from pack";
		rs=st.executeQuery(qry);
		if(rs.next())
			{
		 i=rs.getInt(1);
		i++;
		pid=str+i;
		System.out.println(pid);
	}

//current date



PreparedStatement ps=con.prepareStatement("insert into pack values(?,?,?)");
ps.setInt(1,i);
ps.setString(2,pid);
ps.setString(3,packname);

ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("Package.jsp?m=success");
//out.print("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
