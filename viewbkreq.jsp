	<%@include file="aheader.jsp"%>
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

out.println("<script>alert('Book Request Sent Successfully..!')</script>");
}


%>
	<center>
	<section class="login_box_area section_gap" >
		
					
				<div class="col-lg-6" >
					
<H3> View Book Requests</font></h1>

 <table align="center" border=2>
    
            <tr> 
              <th >Student&nbsp;Name</th>
			   <th>Hallticket&nbsp;NO.</th>
              <th>Book&nbsp;Name</th>
			  <th>Rent&nbsp;(Amount)</th>
			   <th>Receiving</th>
			   	   <th>Address</th>

            </tr>
            <%
		
			


ResultSet rs=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
    String qry="select *from bookinfo";
		rs =st.executeQuery(qry);
		
	while(rs.next())
	{	
%>
            <tr> 
              <td > <%=rs.getString(1)%></td>
			   <td > <%=rs.getString(2)%> </td>
			   <td > <%=rs.getString(3)%> </td>
			   
              <td><%=rs.getString(4)%> Rs.</td>
			  	   <td > <%=rs.getString(5)%> </td>
				   	   <td > <%=rs.getString(6)%> </td>
			   
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