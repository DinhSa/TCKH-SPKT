<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tạp chí Khoa Học SPKT</title>
	<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/myweb.css" >

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js" ></script>
    <script src="js/angular.min.js"></script>
    <script src="js/jquery.validate.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12 well	">
<!--header-->
			<div id="header" >
			<!--row logo-->
				<div class="row">
					<div class="col-md-8">
						<div class="image" href="">
							<img src="images/banner.png" class="img-responsive" alt="Responsive image">
						</div>
					</div><!--end cột image-->
				<!--login-siging-search-->
					<div class="col-md-4">
					<!--Login-->
						<div class="row">
							<div class="col-md-12">
								<div class="nav navbar-right">
									<div class="btn">
										<div class="btn-group">

											<button class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#myModal">
											  Đăng Nhập
											</button>

										<!-- Modal 1 -->
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Đăng Nhập</h4>
											      </div>
											      <!--body-->
											      <div class="modal-body">
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0" checked>  Admin
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1">  Tổng Biên Tập
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="2">  Biên Tập Viên
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="3">  Phản Biện
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="4">  Tác Giả
											      	</label>
											      	<br><br>

											      	<form id="FormDangNhap" method="post" action="" class="form-horizontal">
														<div class="form-group">
															<label class="col-sm-4 control-label" for="Username">User Name </label>
															<div class="col-sm-5">
																<input type="text" class="form-control" id="username" name="username" placeholder="Username" />
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label" for="Password">Password</label>
															<div class="col-sm-5">
																<input type="password" class="form-control" id="password" name="password" placeholder="Password" />
															</div>
														</div>
													</form>

												    <a id="btnDangNhap" class="btn btn-primary" role="button" >Đăng nhập</a> 
												 
												    <script type="text/javascript">
														$.validator.setDefaults( {
															submitHandler: function () {
																alert( "submitted!" );
															}
														} );

														$( document ).ready( function () {
															$( "#FormDangNhap" ).validate( {
																rules: {
																	username: {
																		required: true,
																		minlength: 2
																	},
																	password: {
																		required: true,
																		minlength: 5
																	},
																},
																messages: {
																	username: {
																		required: "Vui lòng nhập lại Username",
																		minlength: "Username không được ít hơn 2 ký tự"
																	},
																	password: {
																		required: "Vui lòng nhập lại Password",
																		minlength: "Password không được ít hơn 5 ký tự"
																	},
																},
																errorElement: "em",
																errorPlacement: function ( error, element ) {
																	// Add the `help-block` class to the error element
																	error.addClass( "help-block" );

																	// Add `has-feedback` class to the parent div.form-group
																	// in order to add icons to inputs
																	element.parents( ".col-sm-5" ).addClass( "has-feedback" );

																	if ( element.prop( "type" ) === "checkbox" ) {
																		error.insertAfter( element.parent( "label" ) );
																	} else {
																		error.insertAfter( element );
																	}

																	// Add the span element, if doesn't exists, and apply the icon classes to it.
																	if ( !element.next( "span" )[ 0 ] ) {
																		$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
																	}
																},
																success: function ( label, element ) {
																	// Add the span element, if doesn't exists, and apply the icon classes to it.
																	if ( !$( element ).next( "span" )[ 0 ] ) {
																		$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
																	}
																},
																highlight: function ( element, errorClass, validClass ) {
																	$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
																	$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
																},
																unhighlight: function ( element, errorClass, validClass ) {
																	$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
																	$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
																}
															} );
														} );
													</script>

												    <script >
       
												        $("#btnDangNhap").click(function(){
												          var chon = $('input[type="radio"]:checked');
												          if(chon.val()==0)
												            $('#btnDangNhap').attr('href','admin1.jsp')
												          else if(chon.val()==1)
												            $('#btnDangNhap').attr('href','tongbientap.jsp')
												          else if(chon.val()==2)
												            $('#btnDangNhap').attr('href','bientapvien1.jsp')
												          else if(chon.val()==3)
												            $('#btnDangNhap').attr('href','phanbien1.jsp')
												          else
												            $('#btnDangNhap').attr('href','tacgia.jsp')
												        });
												       
												    </script>
											      </div>
											      <!--end body-->
											      <div class="modal-footer modal-footer-left">
											        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Cancle</button> -->
											      </div>
											    </div>
											  </div>
											</div>
										<!--end modal 1-->
										</div>

										<div class="btn-group">
											<button class="btn btn-default navbar-btn" data-toggle="modal" data-target="#myModal1">
											  Đăng Ký
											</button>
										<!--modal thong báo-->
											<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Thông Báo</h4>
											      </div>
											      <div class="modal-body">
											        BẠN ĐÃ ĐĂNG KÝ THÀNH CÔNG!!
											      </div>
											      <div class="modal-footer">
											        <button type="button" class="btn btn-primary navbar-btn " data-dismiss="modal">OK</button>
											      </div>
											    </div>
											  </div>
											</div>
										<!--end modal thong bao-->

										<!-- Modal 2 -->
											<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Đăng Ký</h4>
											      </div>
											      <!--body-->
											      <div class="modal-body">
											        	<form id="FormDangKy" method="post" class="form-horizontal" action="">

															<div class="form-group">
																<label class="col-sm-4 control-label" for="Ho">Họ</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" id="ho" name="ho" placeholder="Họ">
																</div>
															</div>
															<div class="form-group">
																<label class="col-sm-4 control-label" for="Ten">Tên</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" id="ten" name="ten" placeholder="Tên">
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="Username">UserName</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" id="username" name="username" placeholder="Username">
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="Email">Email </label>
																<div class="col-sm-5">
																	<input type="email" class="form-control" id="email" name="email" placeholder="Email">
																</div> 
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="Password">Password </label> 
																<div class="col-sm-5">
																	<input type="password" class="form-control" id="password" name="password" placeholder="Password">
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="confirm">Confirm PassWord </label> 
																<div class="col-sm-5">
																	<input type="password" class="form-control" id="confirm" name="confirm" placeholder="Confirm Password">
																</div>
															</div>

															<div class="form-group">
																<div class="col-sm-5 col-sm-offset-4">
																	<div class="checkbox">
																		<label>
																			<input type="checkbox" id="agree1" name="agree1" value="agree" />Đồng ý điều khoản 
																		</label>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<div class="col-sm-9 col-sm-offset-2">
																	<button type="submit" class="btn btn-primary" name="signup1" value="Sign up">Đăng Ký</button>
																</div>
															</div>
															
														</form>
											      </div>
											      <!--endbody-->
											      <div class="modal-footer">
											        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
											        
											      </div>
											    </div>
											  </div>
											</div>
											<script type="text/javascript">
												$.validator.setDefaults( {
													submitHandler: function () {
														alert( "submitted!" );
													}
												} );

												$( document ).ready( function () {
													$( "#FormDangKy" ).validate( {
														rules: {
															ho: "required",
															ten: "required",
															username: {
																required: true,
																minlength: 2
															},
															password: {
																required: true,
																minlength: 5
															},
															confirm: {
																required: true,
																minlength: 5,
																equalTo: "#password"
															},
															email: {
																required: true,
																email: true
															},
															agree1: "required"
														},
														messages: {
															ho: "Vui lòng nhập lại Họ",
															ten: "Vui lòng nhập lại Tên",
															username: {
																required: "Vui lòng nhập lại Username",
																minlength: "Username không được ít hơn 2 ký tự"
															},
															password: {
																required: "Vui lòng nhập lại Password",
																minlength: "Password không được ít hơn 5 ký tự"
															},
															confirm: {
																required: "Vui lòng nhập lại Password",
																minlength: "Password không được ít hơn 5 ký tự",
																equalTo: "Password không khớp !!!"
															},
															email: "Vui lòng nhập lại email",
															agree1: "Vui lòng đồng ý điều khoản"
														},
														errorElement: "em",
														errorPlacement: function ( error, element ) {
															// Add the `help-block` class to the error element
															error.addClass( "help-block" );

															// Add `has-feedback` class to the parent div.form-group
															// in order to add icons to inputs
															element.parents( ".col-sm-5" ).addClass( "has-feedback" );

															if ( element.prop( "type" ) === "checkbox" ) {
																error.insertAfter( element.parent( "label" ) );
															} else {
																error.insertAfter( element );
															}

															// Add the span element, if doesn't exists, and apply the icon classes to it.
															if ( !element.next( "span" )[ 0 ] ) {
																$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
															}
														},
														success: function ( label, element ) {
															// Add the span element, if doesn't exists, and apply the icon classes to it.
															if ( !$( element ).next( "span" )[ 0 ] ) {
																$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
															}
														},
														highlight: function ( element, errorClass, validClass ) {
															$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
															$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
														},
														unhighlight: function ( element, errorClass, validClass ) {
															$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
															$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
														}
													} );
												} );
											</script>
										<!--end modal 2-->
										
										</div>
									</div>
								</div>
			
							</div>
						</div>
					<!--end login-->
					<!--search-->
						<div class="row">
							
								<div class="col-md-12">
									<form class="navbar-form navbar-right" role="search">
								  		<div class="form-group">
								    		<input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm...">
								 		</div>
								  		<a href="ketquatimkiem.jsp"><button type="button" class="btn btn-primary">TÌM</button></a>
									</form>
								</div>
							
						</div><!--end search-->
						<div class="row">
							<div class="col-md-4">
								
							</div>
							<div class="col-md-8">
								<a href="" data-toggle="modal" data-target="#myModal3">Tìm Kiếm Nâng Cao</a>
								<!-- Modal -->
								<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel">Tìm Kiếm Nâng Cao</h4>
								      </div>
								      <div class="modal-body">
								        <form id="FormTimKiemNangCao" method="post" class="form-horizontal" action="">

											<div class="form-group">
												<label class="col-sm-4 control-label" for="TimKiemTheo">Tìm Kiếm Theo: </label>
												<div class="dropdown col-sm-5">
													<button class="btn btn-default dropdown-toggle form-control" type="button" id="timkiemtheo" name="timkiemtheo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
												    Chọn mục ...
												    <span class="caret"></span>
												  </button>
												  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
												    <li><a href="#">Bài Viết</a></li>
												    <li><a href="#">Tác Giả</a></li>
												    <li><a href="#">Lĩnh Vực</a></li>
												  </ul>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label" for="ThoiGian">Thời Gian: </label>
												<div class="col-sm-5">
													<input type="date" class="form-control" id="thoigian" name="thoigian">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label" for="NoiDung">Nội Dung: </label>
												<div class="col-sm-5">
													<input type="text" class="form-control" id="noidung" name="noidung" placeholder="Nhập từ khóa cần tìm ...">
												</div>
											</div>
											
										</form>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
								       <a href="ketquatimkiem.jsp"><button type="button" class="btn btn-primary">TÌM</button></a> 
								      </div>
								    </div>
								  </div>
								</div>
							</div>
						</div>
					</div><!--end Cột login-siging-->
				</div><!--end row logo--><br>

			<!--thanh dieu huong-->
				<div class="row">
					<div class="col-md-12">
						<nav class="navbar navbar-default" style="background: #0a408a;">
						
							<ul class="nav nav-justified " >
									<li><a class="textcolor" href="index.jsp"><strong>Trang chủ</strong></a></li>
									<li><a class="textcolor" href="gioithieu.jsp"><strong>Giới Thiệu</strong></a></li>
									<li><a class="textcolor" href="quydinh_huongdan.jsp"><strong>Quy Định-Hướng Dẫn</strong></a></li>
									<li><a class="textcolor" href="lienhe.jsp"><strong>Liên Hệ</strong></a></li>
									<li><a class="textcolor" href="lienket.jsp"><strong>Liên Kết</strong></a></li>
							</ul>
						
								
						</nav>
					</div>
				</div><!--end thanh dieu huong-->				
			</div>
<!--endhead-->
<!--Main-->
			<div id="Main">
					<div class="row">
					<!--cột trái-->
						<div class="col-md-2">
							<div class="panel panel-success" >
								<div class="panel-heading">
									<h3 class="panel-title" ><strong>Chuyên Ngành</strong></h3>
								</div >
								<ul class="list-group">
								  <a href="#" class="list-group-item"><strong>Công Nghệ Thông Tin</strong></a>
								  <a href="#" class="list-group-item"><strong>Cơ Khí Chế Tạo Máy</strong></a>
								  <a href="#" class="list-group-item"><strong>Cơ Khí Động Lực</strong></a>
								  <a href="#" class="list-group-item"><strong>Điện - Điện Tử</strong></a>
								  <a href="#" class="list-group-item"><strong>In-Truyền Thông</strong></a>
								  <a href="#" class="list-group-item"><strong>Xây Dựng</strong></a>
								  <a href="#" class="list-group-item"><strong>Công Nghệ May Và Thời Trang</strong></a>
								  <a href="#" class="list-group-item"><strong>Công Nghệ Hóa Học Và Thực Phẩm</strong></a>
								</ul>									
							</div>
							
							<!--quang cao-->
							<div class="media">
							  <a class="pull-left" href="#">
							    <img class="media-object" src="images/quangcao.png" alt="...">
							  </a>
							</div>
						</div>
					<!--end cột trái-->

					<!--cột giữa-->
						<div class="col-md-7">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title"><strong>TẠP CHÍ</strong></h3>
								</div>
								<div class="panel-body">
									<div class="text-center">
										<strong>NGHIÊN CỨU LÍ LUẬN</strong>
									</div>
									<div class="text-justify">

										1. Mạc Văn Trang. Bạo lực học đường nhìn từ khía cạnh tâm lí 
										     Tóm tắt: Bài viết phân tích các vấn đề về bạo lực học đường dưới góc nhìn từ khía cạnh tâm lí học. Theo tác giả, hành vi bạo lực học đường nói chung là hành vi của một cá nhân hay nhóm học sinh cố ý dùng sức mạnh để tác động đến cá nhân hay nhóm học sinh khác, gây cho họ những tổn thương về thể xác, tâm lí… Vì vậy, các nhà giáo dục cần nhận diện các loại hành vi bạo lực học đường với tính chất và mức độ tâm lí nghiêm trọng khác nhau để có giải pháp xử lí phù hợp.
										     Từ khóa: Bạo lực học đường; tâm lí; hành vi bạo lực.
										2. Thái Văn Thành. Mô hình nhân cách Trưởng bộ môn trường đại học trước bối cảnh đổi mới căn bản, toàn diện giáo dục và đào tạo
										     Tóm tắt: Bộ môn là đơn vị chuyên môn về đào tạo, khoa học và công nghệ của trường đại học, chịu trách nhiệm về học thuật trong các hoạt động đào tạo, khoa học và công nghệ. Trưởng bộ môn có vai trò to lớn trong việc xây dựng, phát triển bộ môn đáp ứng yêu cầu nâng cao chất lượng đào tạo, nghiên cứu khoa học, góp phần thực hiện thành công sự nghiệp đổi mới giáo dục đại học. Bài viết bàn về mô hình nhân cách Trưởng bộ môn trường đại học. Trong bài, tác giả phân tích rõ mô hình nhân cách Trưởng bộ môn trường đại học gồm các đặc trưng: Nhà giáo, nhà khoa học, nhà quản lí, lãnh đạo, nhà hoạt động xã hội và cung ứng dịch vụ giáo dục, khoa học, công nghệ cho cộng đồng và là nhà hội nhập quốc tế về giáo dục đại học.
										     Từ khóa: Mô hình nhân cách; trưởng bộ môn; bộ môn; trường đại học. 
										3. Hoàng Hòa Bình. Năng lực và ứng dụng kết quả nghiên cứu năng lực vào xây dựng chương trình môn học, đổi mới mô hình sách giáo khoa, phương pháp dạy học và đánh giá kết quả học tập của học sinh
										     Tóm tắt: Năng lực là thuộc tính cá nhân được hình thành, phát triển nhờ tố chất sẵn có và quá trình học tập, rèn luyện cho phép con người thực hiện thành công một loại hoạt động nhất định, đạt kết quả mong muốn trong những điều kiện cụ thể. Hai đặc trưng cơ bản của năng lực là: 1/ Được bộc lộ qua hoạt động; 2/ Đảm bảo hoạt động có hiệu quả, đạt kết quả mong muốn. Bài viết trình bày một số vấn đề lí luận về năng lực và ứng dụng kết quả nghiên cứu năng lực vào xây dựng chương trình môn học, biên soạn sách giáo khoa, đổi mới phương pháp dạy học, đánh giá kết quả học tập của học sinh. 
										     Từ khóa: Năng lực;chương trình môn học; sách giáo khoa; phương pháp dạy học; đánh giá kết quả học tập.
										
									</div><br>
									<form class="form-horizontal" role="form">
									  <div class="form-group">
									    <label class="col-sm-2 control-label">Đánh GIá:</label>
									    <div class="col-sm-10">
									      <p class="form-control-static glyphicon glyphicon-star "></p>
									      <p class="form-control-static glyphicon glyphicon-star "></p>
									      <p class="form-control-static glyphicon glyphicon-star "></p>
									      <p class="form-control-static glyphicon glyphicon-star "></p>
									      <p class="form-control-static glyphicon glyphicon-star-empty "></p>

									    </div>
									  </div>
									 
									</form>
								<!--Comment-->
									<div class="input-group">
								      <input type="text" class="form-control" placeholder="Hãy viết gì đó...">
								      <span class="input-group-btn">
								        <button class="btn btn-default" type="button">Gửi</button>
								      </span>
								    </div>
								<!--end-->
								</div>
							</div>
						</div>
					<!--end cột giữa-->

					<!--cột 3-->
						<div class="col-md-3">
							<div class="panel panel-warning">
								<div class="panel-heading">
									<h3 class="panel-title"><strong>Được Đọc nhiều</strong></h3>
								</div>
								<div class="panel-body">
									<marquee scrolldelay="6" scrollamount="2" onmouseover="this.stop()"" onmouseout="this.start()" direction="up" height="300" style="height:300px;"  behavior="" direction="">
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">Nhà Giáo VN</a></h6>
										    chào mừng ngày nahf giáo việt nam......
										  </div>
										</div>
										<!--continute-->
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>
										<!--continute-->
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp"> HCMUTE</a></h6>
										    nhà trường tăng học phí gấp 5 lần......
										  </div>
										</div>

										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>

										
									</marquee>
								</div>
							</div><!--end panel-->
						</div>
					<!--end cột 3-->
					</div><!--endrow chinh-->
			</div>
<!--endMain-->
		</div>
	</div>
</div>
</body>
<footer>
	<div class="container well">
		<div class="row">
			<div class="col-md-12">
				<div class="text">
						<h6>Copyright © 2013, Trường Đại Học Sư Phạm Kỹ Thuật - Tp.HCM </h6>
						<h6>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh.</h6>
						<h6>Điện thoại: (+84 - 8) 38968641 - (+84 - 8) 38961333</h6>
						<h6>E-mail: ic@hcmute.edu.vn</h6>
				</div>
			</div>
		</div>
	</div>
</footer>
</html>