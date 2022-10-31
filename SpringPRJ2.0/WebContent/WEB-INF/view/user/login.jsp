<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="/resource/img/favicon.png" type="image/png">
<title>Woodrox Furniture</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/resource/css/bootstrap.css">
<link rel="stylesheet" href="/resource/vendors/linericon/style.css">
<link rel="stylesheet" href="/resource/css/font-awesome.min.css">
<link rel="stylesheet" href="/resource/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="/resource/vendors/lightbox/simpleLightbox.css">
<link rel="stylesheet" href="/resource/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="/resource/vendors/animate-css/animate.css">
<link rel="stylesheet" href="/resource/vendors/flaticon/flaticon.css">
<!-- main css -->
<link rel="stylesheet" href="/resource/css/login.css"> 
<link rel="stylesheet" href="/resource/css/style.css">
<link rel="stylesheet" href="/resource/css/responsive.css">

</head>

<body>
	
    <div class="login-wrap">
    
    
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="public" checked><label for="tab-1" class="tab">공무원</label>
            <input id="tab-2" type="radio" name="tab" class="land"><label for="tab-2" class="tab">원예/조경기업</label>
            <input id="tab-3" type="radio" name="tab" class="private"><label for="tab-3" class="tab">민간기업</label>
            <div class="login-form">
            <form action ="govloginSuccess.do" method="post">
                <div class="public-htm">
                    <div class="group">
                        <label for="user" class="label">ID</label>
                        <input id="govID" name="public_official_id" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="govPW" name="password" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> 아이디 저장</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="로그인">
                        <br/>
                        <input type="button" class="button" onclick="location.href='private-join.do'" value="회원가입">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="findPassword.do">비밀번호를 잊으셨나요?</a>
                    </div>
                </div>
                </form>
                <form action ="landloginSuccess.do" method="post">
                <div class="land-htm">
                    <div class="group">
                        <label for="user" class="label">ID</label>
                        <input id="landID" name="landscaping_enterprise_id" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="landPW" name="landscaping_enterprise_pw" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> 아이디 저장</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="로그인">
                        <br/>
                        <input type="button" class="button" onclick="location.href='private-join.do'" value="회원가입">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="findPassword.do">비밀번호를 잊으셨나요?</a>
                    </div>
                </div>
                 </form>
                 <form action ="priloginSuccess.do" method="post">
                <div class="private-htm">
                    <div class="group">
                        <label for="user" class="label">ID</label>
                        <input id="priID" name="pri_enterprise_id" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="priPW" name="pri_enterprise_password" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> 아이디 저장</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="로그인">
                        <br/>
                        <input type="button" class="button" onclick="location.href='private-join.do'" value="회원가입">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="findPassword.do">비밀번호를 잊으셨나요?</a>
                    </div>
                </div>
                </form>
        </div>
        </div>
    </div>
      <!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="/resource/js/jquery-3.2.1.min.js"></script>
	<script src="/resource/js/popper.js"></script>
	<script src="/resource/js/bootstrap.min.js"></script>
	<script src="/resource/js/stellar.js"></script>
	<script src="/resource/vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="/resource/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="/resource/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="/resource/vendors/isotope/isotope-min.js"></script>
	<script src="/resource/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="/resource/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resource/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="/resource/vendors/counter-up/jquery.counterup.min.js"></script>
	<script src="/resource/js/mail-script.js"></script>
	<script src="/resource/rs/login.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resource/js/gmaps.min.js"></script>
	<script src="/resource/js/theme.js"></script>


</body>
</html>