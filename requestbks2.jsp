	<%@include file="uheader.jsp"%>

<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('Book details added successfully')</script>");
}

if(request.getParameter("msg2")!=null){

out.println("<script>alert('Book name already available..!')</script>");
}
%><section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
		
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub"></h6>
				<center><h3 class="w3ls-title text-uppercase text-dark font-weight-bold">Request For Library Books</h3></center>
			</div>
			
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" action="requestbks3.jsp" method="post">
				 <center><img src="img/banner/PhonePeQR.png" style="width:50%"></center>
    
					
					<div class="form-group">
						<label>Book Name</label>
						<input type="text" class="form-control" name="bknm" value=<%=request.getParameter("bknm")%> placeholder="" readonly>
					</div>
					<div class="form-group">
						<label>Fee Amount (.Rs)</label>
						<input type="text" class="form-control" name="cost" value=<%=request.getParameter("cost")%> placeholder="" readonly>
					</div>

					<div class="form-group">
						<label>Received Type</label>
						<select name="type" class="form-control">
						<option value="HomeDelivery">HomeDelivery</option>
						<option value="Collect at Library">Collect at Library</option>
						</select>
</div>

						<div class="form-group">
						<label class="mb-2">Reference number</label>
						<input type="text" class="form-control" name="ref"  placeholder="" required="">
					</div>
					<label class="mb-2">Payment Screenshot</label>
					 
       <br />
      <form action="processUploadedFile.jsp" method="post"
        enctype="multipart/form-data">

         <input type = "file" name = "file" size = "50" />
         <br />
         
      
					
				<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Make Payment</button>
							
							</div>
					</form>
				</form>
			</div>
		</div>
	</section>
	

	<%@ include file="footer.jsp"%>