<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.databasecon" import="javax.swing.JOptionPane"%>



<%! String type, cost, stdntnm, date, state, zip, tele, adrs, htno, pwd;
	int i=0;
%>
<%

stdntnm=request.getParameter("stdntnm");

type=request.getParameter("type");

date=request.getParameter("date");

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
String htno=(String)session.getAttribute("htno");

ResultSet rst=st1.executeQuery("select name,adrs from register where htno='"+session.getAttribute("htno")+"'");
if(rst.next()){

if(type.equals("HomeDelivery")){

 st.executeUpdate("insert into tcinfo values('"+stdntnm+"','"+htno+"','"+type+"','"+rst.getString(2)+"' )");

}else{

st.executeUpdate("insert into tcinfo values('"+stdntnm+"','"+htno+"','"+type+"','"+date+"' )");

}


	response.sendRedirect("requesttc.jsp?msg=suces");
	
	}





}
catch(Exception e)
{
e.printStackTrace();
	}
%>
