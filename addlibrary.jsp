	<%@include file="aheader.jsp"%>

<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('Book details added successfully')</script>");
}

if(request.getParameter("msg2")!=null){

out.println("<script>alert('Book name already available..!')</script>");
}
%>
	<center>
	<section class="login_box_area section_gap" >
		
					
				<div class="col-lg-6" >
					<div class="login_form_inner">
						<h3>Add Book Details</h3>
						<form class="row login_form" action="addlibrary2.jsp" method="post"  >
							<div class="col-md-12 form-group">
	
								<input type="text" class="form-control" name="bkname" placeholder="Enter Book Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Book Name'" required >
							</div>
							<div class="col-md-12 form-group">
								<input type="number" class="form-control" name="cost" placeholder="Enter Rent value" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Rent value'" required >
							</div>
							
							<div class="col-md-12 form-group">
								<div class="creat_account">
									
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn"> Submit</button>
							
							</div>
						</form>
							<div align="Center" class="">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</center>
	<%@ include file="footer.jsp"%>