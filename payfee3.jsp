<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.databasecon" import="javax.swing.JOptionPane"%>



<%! String type, cost, addr, city, state, zip, tele, adrs, htno, pwd;
	int i=0;
%>
<%


type=request.getParameter("type");

cost=request.getParameter("cost");

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
String htno=(String)session.getAttribute("htno");

ResultSet rst=st1.executeQuery("select name from register where htno='"+session.getAttribute("htno")+"'");
if(rst.next()){
	
int q= st.executeUpdate("insert into paymentinfo values('"+rst.getString(1)+"','"+htno+"','"+type+"','"+cost+"',now())");

	if(q>0)
	{
	response.sendRedirect("payfee.jsp?msg=suces");
	
	}





}


}
catch(Exception e)
{
e.printStackTrace();
	}
%>
