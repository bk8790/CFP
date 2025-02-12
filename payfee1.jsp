	<%@include file="uheader.jsp"%>

<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('Book details added successfully')</script>");
}

if(request.getParameter("msg2")!=null){

out.println("<script>alert('Book name already available..!')</script>");
}
%>	<section class="features-area section_gap">
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
	
    
    <center><img src="img/banner/PhonePeQR.png" style="width:50%"></center>
    <div  align="center" class="text">OR pay with card
		<a href="payfee4.jsp">clickhere</a></div>
  </div>
  <section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" action="payfee3.jsp" method="post">
					
					<div class="form-group">
						<label>Fee Type</label>
						<input type="text" class="form-control" name="type" value=<%=request.getParameter("type")%> placeholder="" readonly>
					</div>
					<div class="form-group">
						<label>Fee Amount (.Rs)</label>
						<input type="text" class="form-control" name="cost" value=<%=request.getParameter("cost")%> placeholder="" readonly>
					</div>
						<div class="form-group">
						<label class="mb-2">Reference number</label>
						<input type="text" class="form-control" name="name"  placeholder="" required="">
					</div>
					<div>
					 <form action = "UploadServlet" method = "post"
         enctype = "multipart/form-data">
		 <label class="mb-2">Upload payment proof</label>
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
	  </div>
					
				

				<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Make Payment</button>
							
							</div>
					
				</form>
			</div>
		</div>
	</section>

	<%@ include file="footer.jsp"%>