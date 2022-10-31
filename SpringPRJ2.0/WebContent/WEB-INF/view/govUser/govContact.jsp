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
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resource/css/bootstrap.css">
    <link rel="stylesheet" href="/resource/vendors/linericon/style.css">
    <link rel="stylesheet" href="/resource/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resource/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/resource/vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="/resource/vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="/resource/vendors/animate-css/animate.css">
    <!-- main css -->
    <link rel="stylesheet" href="/resource/css/style.css">
    <link rel="stylesheet" href="/resource/css/responsive.css">
    <link rel="stylesheet" href="/resource/css/IndexStyle.css">
    <link rel="stylesheet" href="/resource/css/myPageStyle.css">
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
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0"
                data-background=""></div>
            <div class="container">
                <div class="banner_content text-center">
                    <h2>My Page</h2>
                    <h4>마이 페이지</h4>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Contact Area =================-->
    <section class="contact_area p_120">
        <h1>공무원정보</h1><br />
        
        <div class="info-container">
            <div class="flex-item" id="company_part">
                <p class="info-label">ID</p>
                <p class="info-label" id="info-text">ID입력</p>
            </div>
            <div class="flex-item" id="company_name">
                <p class="info-label">이름</p>
                <p class="info-label" id="info-text">이름입력</p>
            </div>
            <div class="flex-item" id="company_ceo">
                <p class="info-label">소속지역</p>
                <p class="info-label" id="info-text">입력한 소속지역</p>
            </div>
            <div class="flex-item" id="company_number">
                <p class="info-label">소속부서</p>
                <p class="info-label" id="info-text">입력한 소속부서</p>
            </div>
            <div class="flex-item" id="company_date">
                <p class="info-label">전화번호</p>
                <p class="info-label" id="info-text">입력한 전화번호</p>
            </div>
            
            <a class="banner_btn" id="info-modify-btn" href="govUserModify.jsp">개인정보수정</a>
        </div>
        <br /><br /><br /><br />
        <h1>정부사업신청목록</h1>
        
        <div class="business-table">
            <table>
                <thead>
                    <tr>
                        <th>입찰신청번호</th>
                        <th>사업명</th>
                        <th>조경사업분야</th>
                        <th>입찰신청일시</th>
                        <th>낙찰여부</th>
                        <th>낙찰일시</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>8</td>
                        <td>Marco Belinelli</td>
                        <td></td>
                        <td>G</td>
                        <td>6-5</td>
                        <td>195</td>
                    </tr>
                    
                </tbody>
            </table>

        </div>
    </section>
    <!--================Contact Area =================-->

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

    <!--================Contact Success and Error message Area =================-->
    <div id="success" class="modal modal-message fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                    <h2>Thank you</h2>
                    <p>Your message is successfully sent...</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Modals error -->

    <div id="error" class="modal modal-message fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </button>
                    <h2>Sorry !</h2>
                    <p> Something went wrong </p>
                </div>
            </div>
        </div>
    </div>
    <!--================End Contact Success and Error message Area =================-->




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
    <script src="/resource/js/mail-script.js"></script>
    <script src="/resource/vendors/counter-up/jquery.waypoints.min.js"></script>
    <script src="/resource/vendors/counter-up/jquery.counterup.min.js"></script>
    <!-- contact js -->
    <script src="/resource/js/jquery.form.js"></script>
    <script src="/resource/js/jquery.validate.min.js"></script>
    <script src="/resource/js/contact.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="/resource/js/gmaps.min.js"></script>
    <script src="/resource/js/theme.js"></script>
</body>

</html>