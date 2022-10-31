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
<link rel="stylesheet" href="/resource/css/style.css">
<link rel="stylesheet" href="/resource/css/responsive.css">
<link rel="stylesheet" href="/resource/css/login.css">
</head>

<body>


    <div class="join-wrap">
        <div class="join-html">
            <input id="tab" type="radio" name="tab" class="public" checked><label for="tab" class="tab">공무원 회원가입</label>
            <div class="join-form">
                <div class="public-htm">
                    <div class="group">
                        <label for="user" class="label">ID</label>
                        <input id="user" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">비밀번호</label>
                        <input id="pass" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <label for="repw" class="label">비밀번호 재확인</label>
                        <input id="repw" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <label for="name" class="label">이름</label>
                        <input id="name" type="name" class="input">
                    </div>
                    <div class="group">
                        <label for="tel" class="label">전화번호</label>
                        <input id="tel" type="tel" class="input">
                    </div>
                    <div class="group">
                        <label for="dept" class="label">소속 부서</label>
                        <select name="dept" class="input">
                            <option value="없음" selected="selected">없음</option>
                            <option value="..">..</option>
                            <option value="...">...</option>
                            <option value="....">....</option>
                        </select>
                    </div>
                    <div class="group">
                        <label for="loc" class="label">시/군/구</label>
                        <select name="loc" class="input">
                            <option value="없음" selected="selected">없음</option>
                            <option value="..">..</option>
                            <option value="...">...</option>
                            <option value="....">....</option>
                        </select>
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> 아이디 저장</label>
                    </div>
                    <div class="group">
                        <input type="button" class="button" onclick="location.href='indexOficial.jsp'" value="회원가입">
                    </div>
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
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resource/js/gmaps.min.js"></script>
	<script src="/resource/js/theme.js"></script>


</body>
</html>