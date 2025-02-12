	<%@include file="aheader.jsp"%>

<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('Fee details added successfully')</script>");
}

%>
	<center>
	<section class="login_box_area section_gap" >
		
					
				<div class="col-lg-6" >
					<div class="login_form_inner">
						<h3>Add Fee Details</h3>
						<form class="row login_form" action="addfee2.jsp" method="post"  >
							<div class="col-md-12 form-group">
							<select name="type" required  class="form-control">
							<option value="">---Select---</option>
							<option value="BusFee">BusFee</option>
							<option value="ExamFee">ExamFee</option>
							<option value="AdmissionFee">AdmissionFee</option>
								<option value="HostelFee">HostleFee</option>
							
							</div>
							<div class="col-md-12 form-group">
								<input type="number" class="form-control" name="cost" placeholder="Cost" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Cost'" required >
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