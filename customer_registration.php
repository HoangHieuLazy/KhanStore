<?php
if (isset($_GET["register"])) {
	
	?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Han Store</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
                <link href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet'/>
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Han Store</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.php"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<!--<li><a href="index.php"><span class="glyphicon glyphicon-modal-window"></span>Product</a></li>-->
                                
			</ul>
                    <div style="text-align: right; margin: 10px"><a href="login_form.php" class="btn btn-login" style="color: lightgrey; "><span class="glyphicon glyphicon-user"></span>Đăng nhập</a></div>
		</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid"  style="width: 50%">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="signup_msg">
				<!--Alert from signup form-->
			</div>
			<div class="col-md-2"></div>
		</div>
            <div class="row" >
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">Đăng ký User</div>
					<div class="panel-body">
					
					<form id="signup_form" onsubmit="return false">
						<div class="row">
							<div class="col-md-6">
								<label for="f_name">Họ</label>
								<input type="text" id="f_name" name="f_name" class="form-control">
							</div>
							<div class="col-md-6">
								<label for="f_name">Tên</label>
								<input type="text" id="l_name" name="l_name"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="email">Email</label>
								<input type="text" id="email" name="email"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="password">Mật khẩu</label>
								<input type="password" id="password" name="password"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="repassword">Nhập lại mật khẩu</label>
								<input type="password" id="repassword" name="repassword"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="mobile">Số điện thoại</label>
								<input type="text" id="mobile" name="mobile"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="address1">Địa chỉ</label>
								<input type="text" id="address1" name="address1"class="form-control">
							</div>
						</div>
						<!--<div class="row">
							<div class="col-md-12">
								<label for="address2">Address Line 2</label>
								<input type="text" id="address2" name="address2"class="form-control">
							</div>
						</div>-->
						<p><br/></p>
						<div class="row">
							<div class="col-md-12">
								<input style="width:100%;" value="Đăng ký" type="submit" name="signup_button"class="btn btn-success btn-lg">
							</div>
						</div>
						
					</div>
					</form>
					<div class="panel-footer"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
<footer id="footer" class="footer-1" style="background: #252525; color: white;">
<div class="main-footer widgets-dark typo-light">
<div class="container">
<div class="row">

  <div class="col-xs-12 col-sm-6 col-md-3">
<div class="" style="">
    <h5 class="" style="font-weight: bold; font-size: 20px; padding-top: 10px">Quy định - Chính sách<span></span></h5>
    <hr style="width: 50px; margin-left: 0">
<ul>
    <li  style="padding-bottom: 5px"><a style="color: white;">Chính sách bảo hành</a></li>
    <li style="padding-bottom: 5px"><a style="color: white;">Chính sách vận chuyển</a></li>
    <li style="padding-bottom: 5px"><a style="color: white;">Chính sách đổi trả hàng</a></li>
    <li style="padding-bottom: 5px"><a style="color: white;">Chính sách bảo mật</a></li>
    <li style="padding-bottom: 5px"><a style="color: white;">Hướng dẫn thanh toán</a></li>
    
</ul>
</div>
</div>

  
<div class="col-xs-12 col-sm-6 col-md-3">
<div class="widget no-box">
<h5 class="widget-title" style="font-weight: bold; font-size: 20px; padding-top: 10px">Hệ thống cửa hàng<span></span></h5>
<hr style="width: 50px; margin-left: 0">
<div class="thumb-content"><span>Trường Đại Học Công Nghiệp Hà Nội, quận Nam Từ Liêm, Tp.Hà Nội</span><br><a href="https://goo.gl/maps/kpyCJCtCAxj1oAXX8" target="_blank">Xem bản đồ</a></div><br> 
<div class="thumb-content" ><span>120 Thái Hà, Q. Đống Đa, Hà Nội Điện thoại: 0969.120.120 - 037.437.9999 </span><br><a href="https://goo.gl/maps/ASXnH8XtpHsBaYf97" target="_blank">Xem bản đồ</a></div><br>
</div>
</div>

  

      <div class="col-xs-12 col-sm-6 col-md-3" >
<div class="widget no-box">
<h5 class="widget-title" style="font-weight: bold; font-size: 20px; padding-top: 10px">Theo dõi<span></span></h5>
<hr style="width: 50px; margin-left: 0">
<p><a href="#">tuananh@gmail.com</a></p>
<a href="#"> <i class="fa fa-facebook" style="display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    background-color: #3e3e3e;
    color: #fff;
    padding: 9px;
    border-radius: 5px;"> </i> </a>
    <a href="#"> <i class="fa fa-twitter" style="display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    background-color: #3e3e3e;
    color: #fff;
    padding: 9px;
    border-radius: 5px;"> </i> </a>
    <a href="#"> <i class="fa fa-youtube" style="display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    background-color: #3e3e3e;
    color: #fff;
    padding: 9px;
    border-radius: 5px;"> </i> </a>
</div>
</div>


<div class="col-xs-12 col-sm-6 col-md-3">
<div class="widget no-box">
<h5 class="widget-title" style="font-weight: bold; font-size: 20px; padding-top: 10px">Liên hệ<span></span></h5>
<hr style="width: 50px; margin-left: 0">
            <p>Vui lòng nhập email của bạn vào đây để liên hệ với chúng tôi!</p>
  <div class="emailfield">
      <input type="text" name="email" placeholder="Email" style="background: rgba(255,255,255,0.075);
    padding: 10px 15px;
    color: #aaa;
    border: 3px solid rgba(0,0,0,0.1);
    font-size: 14px;
    margin-bottom: 16px;
    border-radius: 5px;
    transition: all 0.2s cubic-bezier(0.4,0,0.2,1);
    transition-delay: 0.2s;
    text-align: center;
    width: 100%;">
<input name="uri" type="hidden" value="arabiantheme">
<input name="loc" type="hidden" value="en_US">
<input class="submitbutton ripplelink" type="submit" value="Đăng ký" style="background: #e67e22; border: 3px solid rgba(0,0,0,0.1);
    color: #fff;
    border-color: #e67e22;
    box-shadow: 0 8px 17px 0 rgba(0,0,0,0.2);
    transition-delay: 0s;
    width: 100%;
    font-size: 14px;
    /* font-weight: 700; */
    border: 0px solid;
    transition: all 0.2s cubic-bezier(0.4,0,0.2,1);
    padding: 10px 15px;
    margin-bottom: 16px;
    border-radius: 5px;">
</form>  
</div>
</div>

</div>
</div>
</div>
  
    <div class="footer-copyright" style="">
<div class="container">
<div class="row">
<div class="col-md-12 text-center" style="margin: 20px">
<p>Copyright TunaHan © 2023. Thank you.</p>
</div>
</div>
</div>
</div>
</footer>
</html>
	<?php
}



?>






















