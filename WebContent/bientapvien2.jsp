<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
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
											<div class="dropdown">
											  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
											    BTV
											    <span class="caret"></span>
											  </button>
											  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
											    <li><a href="thongtincanhan.jsp">Thông Tin Cá Nhân</a></li>
											    <li><a href="bientapvien2.jsp">Biên Tập Bài</a></li>
											    <li role="separator" class="divider"></li>
											    <li><a href="index.jsp">Thoát</a></li>
											  </ul>
											</div>
										</div>
									</div>			
								</div>
							</div>
						</div><br>
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
						<div class="col-md-10">
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">Quản Lý Bài</h3>
								</div>
								<div class="panel-body">
									<div>
									  <!-- Nav tabs -->
									  <ul class="nav nav-tabs">
									    <li class="active"><a href="#dsbaiduocgiao" data-toggle="tab">Danh Sách Bài Được Giao</a></li>
									    <li><a href="#dsbaidagui" data-toggle="tab">Danh Sách Bài Đã Gửi</a></li>
									  </ul>

									  <!-- Tab panes -->
									  <div class="tab-content">
									    <div class="tab-pane fade in active" id="dsbaiduocgiao">
									    	<table class="table table-bordered table-hover">
												<thead>
													<tr>
														<th>Tên Bài</th>
														<th>Tác Giả</th>
														<th>Ngày gửi</th>
														<th>File</th>
													</tr>
												</thead>
												<tbody>
												<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" 
												url="jdbc:mysql://localhost/tckh" user="root" password="vinhphUc03"/>
												<sql:query var="result" sql="select * from dsbaiduocgiaobt" dataSource="${con }"/>
												<c:forEach var="rows" items="${result.rows }">
													<tr>
														<td>${rows.TenBai }</td>
														<td>${rows.TacGia }</td>
														<td>${rows.NgayGui }</td>
														<td>${rows.File }</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
											<div class="col-md-offset-5">
												<a href="xemnoidung.jsp"><button type="submit"><strong>XEM & BIÊN TẬP</strong></button></a>
											</div>
							    		</div>
									    <div class="tab-pane fade" id="dsbaidagui">
									    	<table class="table table-bordered table-hover">
												<thead>
													<tr>
														<th>Tên Bài</th>
														<th>Tác Giả</th>
														<th>Ngày gửi</th>
														<th>File</th>
														<th>Trạng thái</th>

													</tr>
												</thead>
												<tbody>
												<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" 
												url="jdbc:mysql://localhost/tckh" user="root" password="vinhphUc03"/>
												<sql:query var="result" sql="select * from dsbaidagui" dataSource="${con }"/>
												<c:forEach var="rows" items="${result.rows }">
													<tr>
														<td>${rows.TenBai }</td>
														<td>${rows.TacGia }</td>
														<td>${rows.NgayGui }</td>
														<td>${rows.File }</td>
														<td>${rows.TrangThai }</td>
													</tr>
												</c:forEach>
												</tbody>
											</table>
											<div class="col-md-offset-5">
											<!-- Modal xóa -->
											<!-- <button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Gửi Tổng Biên Tập</button> -->

											<div class="modal bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
											  <div class="modal-dialog modal-sm">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Thông báo!</h4>
											      </div>
											      <div class="modal-body">
											        <div class="text-center">
											        	Bài viết đã được gửi!
											        </div>
											      </div>
											      <div class="modal-footer">
											        <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
											        
											      </div>
											    </div><!--k-->
											  </div>
											</div>
										<!--end modal xóa-->
										</div>
									    </div>
									  </div>
									</div>
								</div>
							</div>
						</div>
					<!--end cột giữa-->
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