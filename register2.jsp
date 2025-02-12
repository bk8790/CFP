<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.databasecon" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, adrs, htno, pwd;
	int i=0;
%>
<%


name=request.getParameter("name");

htno=request.getParameter("hno");
pwd=request.getParameter("pwd");
adrs=request.getParameter("adrs");
tele=request.getParameter("mno");

 

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

ResultSet rst=st1.executeQuery("select *from register where htno='"+htno+"'");

if(!rst.next()){
	int q= st.executeUpdate("insert into register values('"+name+"','"+htno+"','"+pwd+"','"+tele+"','"+adrs+"')");

	if(q>0)
	{
	response.sendRedirect("User.jsp?msg2=suces");
	
	}

}
else
response.sendRedirect("register.jsp?msg2=duplicate");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
