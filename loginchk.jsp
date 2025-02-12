<%@ page import="java.sql.*,databaseconnection.*"%>
<%	
		try{
		String unm=request.getParameter("unm");
		String pwd=request.getParameter("pwd");
		HttpSession ses=request.getSession();
	            Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				ResultSet rst=st.executeQuery("select *from register  where htno='"+unm+"' and passwrd='"+pwd+"'");
				if(rst.next()){
					ses.setAttribute("htno",unm);
				
					response.sendRedirect("userhome.jsp");	
				}
				else{
				response.sendRedirect("User.jsp?msg=failed");
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
			
			
%>