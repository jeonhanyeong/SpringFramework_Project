<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="/resource/img/favicon.png" type="image/png">
        <title>Woodrox Furniture</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../resource/css/bootstrap.css">
        <link rel="stylesheet" href="../resource/vendors/linericon/style.css">
        <link rel="stylesheet" href="../resource/css/font-awesome.min.css">
        <link rel="stylesheet" href="../resource/vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="../resource/vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="../resource/vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="../resource/vendors/animate-css/animate.css">
        <!-- main css -->
        <link rel="stylesheet" href="../resource/css/style.css">
        <link rel="stylesheet" href="../resource/css/responsive.css">
		<link rel="stylesheet" href="../resource/css/IndexStyle.css">
    </head>
    <body>
                   					 <input type="hidden" id="sessionID" value="${sessionScope.sessionID}"/>
           					 <input type="hidden" id="sessionPart" value="${sessionScope.sessionPart}"/>
        <!--================Header Menu Area =================-->
         <header class="header_area">
           	<div class="top_menu">
           		<div class="container contaierColor">
           			<div class="top_inner">
           				<div class="float-left">
           					<a href="/logout.do">로그아웃</a>
           					<p>${sessionScope.sessionID}님 ! 환영합니다.</p>
           					 <input type="hidden" id="sessionID" value="${sessionScope.sessionID}"/>
           					 <input type="hidden" id="sessionPart" value="${sessionScope.sessionPart}"/>
           				</div>
           			</div>
           		</div>
           	</div>
            <div class="main_menu" id="mainNav">
            	<nav class="navbar navbar-expand-lg navbar-light">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<a class="navbar-brand logo_h" href="index.html"><img src="/resource/img/logo.png" alt=""><img src="/resource/img/logo-2.png" alt=""></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
							<ul class="nav navbar-nav menu_nav ml-auto">
								<li class="nav-item active"><a class="nav-link" href="/notice/notice.do">공지사항</a></li> 
								<li class="nav-item"><a class="nav-link" href="business_progress.do">진행현황</a></li>
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">사업공고</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="governmentBoard/governmentBoardTable.do">정부사업</a></li>
										<li class="nav-item"><a class="nav-link" href="/privateBoard/privateBoardTable.do">민간사업</a></li>
									</ul>
								</li> 
								<li class="nav-item"><a class="nav-link" href="mypage.do">마이페이지</a></li>
							</ul>
						</div> 
					</div>
            	</nav>
            </div>
        </header>
	 <!--================Header Menu Area =================-->
        
    <!-- 공지글 작성 -->   

	<!--================Blog Area =================-->
	<section class="blog_area single-post-area p_120">
		<div class="container">
			<div class="comment-form">
				<h4 style="font-size: 22px;">공지글 제목</h4>
				<form>
					<!--<div class="form-group">
						<input type="text" class="form-control" id="subject" placeholder="제목" onfocus="this.placeholder = ''" onblur="this.placeholder = '제목'">
					</div>-->
					<div class="form-group form-inline">
						<div class="form-group col-lg-6 col-md-6 name">
						  <input type="text" class="form-control" id="name" placeholder="글번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '글번호'">
						</div>
						<div class="form-group col-lg-6 col-md-6 email">
						  <input type="text" class="form-control" id="email" placeholder="작성날짜" onfocus="this.placeholder = ''" onblur="this.placeholder = '작성날짜'">
						</div>										
					</div>
					<div class="form-group">
						<textarea class="form-control mb-10" rows="10" name="message" placeholder="내용" onfocus="this.placeholder = ''" onblur="this.placeholder = '날짜'" required=""></textarea>
					</div>
					<a href="#" class="primary-btn submit_btn">목록</a>
					<a href="#" class="primary-btn submit_btn">수정</a>
					<a href="#" class="primary-btn submit_btn">삭제</a>
				</form>
			</div>
		</div>
	</section>
	<!--================Blog Area =================-->

	 <!-- 공지글 작성 끝 -->   

        <!--================Footer Area =================-->
        <footer class="footer_area p_120">
        	<div class="container">
        		<div class="row footer_inner">
        			<div class="col-lg-5 col-sm-6">
        				<aside class="f_widget ab_widget f_title2">
        					<div class="f_title f_title2">
        						<h3>국가 원예(조경) 사업 매칭 시스템</h3>
        					</div>
        					<p> Kibwa (사) IT여성기업인협회에서 진행하는 2022년 부트캠프</p>
        					<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script>남상윤 교수님 파이널 원조<i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="http://www.kibwa.org/" target="_blank">Kibwa</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
        				</aside>
        			</div>
        		</div>
        	</div>
        </footer>
        <!--================End Footer Area =================-->
        
        
        
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="../resource/js/jquery-3.2.1.min.js"></script>
        <script src="../resource/js/popper.js"></script>
        <script src="../resource/js/bootstrap.min.js"></script>
        <script src="../resource/js/stellar.js"></script>
        <script src="../resource/vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="../resource/vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="../resource/vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="../resource/vendors/isotope/isotope-min.js"></script>
        <script src="../resource/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="../resource/js/jquery.ajaxchimp.min.js"></script>
        <script src="../resource/js/mail-script.js"></script>
        <script src="../resource/vendors/counter-up/jquery.waypoints.min.js"></script>
        <script src="../resource/vendors/counter-up/jquery.counterup.min.js"></script>
        <script src="../resource/js/theme.js"></script>
    </body>
</html>