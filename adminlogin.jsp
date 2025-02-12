<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%	
		String unm=request.getParameter("unm");
		String pwd=request.getParameter("pwd");
		HttpSession ses=request.getSession();

			if(unm.equals("admin")&&pwd.equals("admin"))	{
			response.sendRedirect("adminhome.jsp");
			}
			else
			{
				response.sendRedirect("Admin.jsp?msg=failed");
				
			}
%>