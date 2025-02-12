	<%@include file="uheader.jsp"%>
	<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>

<%@ page  import="java.sql.*" import="databaseconnection.*" %>     


<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('Fee paid Successfully..!')</script>");
}


%>
	<center>
	<section class="login_box_area section_gap" >
		
					
				<div class="col-lg-6" >
					
<H3>College Fee Details</font></h1>

 <table align="center" border=2>
    
            <tr> 
              <th >SI.NO.</th>
			   <th>Fee Type</th>
              <th>Amount</th>
			  <th>Action</th>

            </tr>
            <%
		
			


ResultSet rs=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
    String qry="select *from feedetails";
		rs =st.executeQuery(qry);
		
	while(rs.next())
	{	
%>
            <tr> 
              <td > <%=rs.getString(1)%></td>
			   <td > <%=rs.getString(2)%> </td>
              <td><%=rs.getString(3)%> Rs.</td>
			   <td align="center"><a href="payfee2.jsp?sno=<%=rs.getString(1)%>&type=<%=rs.getString(2)%>&cost=<%=rs.getString(3)%>">Pay Now</a></td>
            </tr>
            <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1);

	   }
 %>
          </table>

						
				</div>
			</div>
		</div>
	</section>
	</center>
	<%@ include file="footer.jsp"%>