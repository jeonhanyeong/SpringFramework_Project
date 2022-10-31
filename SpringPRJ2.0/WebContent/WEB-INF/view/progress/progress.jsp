<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
    css 에 붙히기
#dd{
background-color: rgba(0, 0, 0, 0.5);
}
-->
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/resource/img/favicon.png" type="image/png">
    <title>사업 진행 현황</title>
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
    <link rel="stylesheet" href="/resource/css/responsive.css">
	<link rel="stylesheet" href="/resource/css/IndexStyle.css">
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

    <!--================Home Banner Area =================-->
    <section class="home_banner_area">
        <div class="banner_inner" style="height: 100%">
            <div class="container">
                <div class="banner_content">
                    <div class="comment-form" style="margin-top: 15%;">
                        <h1 style="color: black;">00사업 계획서 제출 페이지</h1>
                        <h1 style="text-align: left; color: black;">제출 양식</h1>
                        <hr style="border: 1px solid black;">
                        <div id="row">
                            <div class="col-md-12">&nbsp;</div>
                        </div>
                        <form>
                            <!-- <div class="form-group form-inline">
                                <h1 style="color: black;">이름</h1>
                                <div class="form-group col-lg-12 col-md-12 name">
                                    <input type="text" class="form-control" id="name" placeholder="Enter Name"
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'">
                                    <div id="row">
                                        <div class="col-md-12">&nbsp;</div>
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 name">
                                    </div>
                                    <h1 style="color: black;">이메일</h1>
                                    <div class="form-group col-lg-12 col-md-12 name">
                                        <input type="email" class="form-control" id="email"
                                            placeholder="Enter email address" onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Enter email address'">
                                    </div>
                                </div>
                            </div> -->
                            <div id="row">
                                <div class="col-md-12">&nbsp;</div>
                            </div>
                            <!-- <hr style="border: 1px solid black;"> -->
                            <h1 style="color: black; text-align: left;">제목</h1>
                            <div class="form-group">
                                <input type="text" class="form-control" id="subject" placeholder="Subject"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
                            </div>
                            <div id="row">
                                <div class="col-md-12">&nbsp;</div>
                            </div>
                            <h1 style="color: black; text-align: left;">내용</h1>
                            <div class="form-group">
                                <textarea class="form-control mb-10" rows="10" name="message" placeholder="Messege"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'"
                                    required=""></textarea>
                            </div>
                            <div id="row">
                                <div class="col-md-12">&nbsp;</div>
                            </div>
                            <hr style="border: 1px solid black;">
                            <h1 style="color: black; text-align: left;">첨부파일</h1>
                            <div class="form-group" style="text-align: left;">
                                <input type="file" style="color: black;">
                            </div>
                            <hr style="border: 1px solid black;">
                            <a href="#" class="primary-btn submit_btn">제출하기</a>
                        </form>
                    </div>
                </div>
            </div>
    </section>

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
                <!--<div class="col-lg-5 col-sm-6">
                    <aside class="f_widget news_widget">
                        <div class="f_title">
                            <h3>Newsletter</h3>
                        </div>
                        <p>Stay updated with our latest trends</p>
                        <div id="mc_embed_signup">
                            <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                <div class="input-group d-flex flex-row">
                                    <input name="EMAIL" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                    <button class="btn sub-btn"><span class="lnr lnr-arrow-right"></span></button>		
                                </div>				
                                <div class="mt-10 info"></div>
                            </form>
                        </div>
                    </aside>
                </div>
                <div class="col-lg-2">
                    <aside class="f_widget social_widget">
                        <div class="f_title">
                            <h3>Follow Me</h3>
                        </div>
                        <p>Let us be social</p>
                        <ul class="list">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </aside>
                </div>-->
            </div>
        </div>
    </footer>
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="/resource/js/gmaps.min.js"></script>
    <script src="/resource/js/theme.js"></script>
</body>

</html>