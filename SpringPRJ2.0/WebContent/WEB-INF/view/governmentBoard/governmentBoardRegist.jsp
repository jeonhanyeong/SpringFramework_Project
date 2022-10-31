<%@ page import="poly.dto.GovBoardDTO" %>
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
                        <h3 style="text-align: left; color: black; text-align:center">정부사업공고글 등록</h3>
                        <hr style="border: 1px solid black;">
                        <div id="row">
                            <div class="col-md-12">&nbsp;</div>
                        </div>
                        
                        <form name='frm' method="post" action="InsertGovBoard.do">
                            <h3 style="color: black;">사업명</h3>
                                <div class="form-group col-lg-12 col-md-12 name">
                                    <input type="text" class="form-control" id="name" name="business_title" placeholder="사업명"
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = '사업명'">
                            <div class="form-group form-inline">
                                <div style='margin: 200px 0 0px 0;'></div>
                                <div class="form-group col-lg-6 col-md-6 name">
                                    <h4 style="color: black;">사업시작날짜</h4>
                                  <input type="text" class="form-control" id="name" name="business_start_date" placeholder="사업시작날짜" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업시작날짜'">
                                </div>
                                <div class="form-group col-lg-6 col-md-6 email">
                                    <h4 style="color: black;">사업종료날짜</h4>
                                  <input type="text" class="form-control" id="name" naeme="business_end_date" placeholder="사업종료날짜" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업종료날짜'">
                                </div>										
                              </div>
                        
                              <div class="form-group form-inline">
                                <div class="form-group col-lg-6 col-md-6 name">
                                    <h4 style="color: black;">사업추정액</h4>
                                  <input type="text" class="form-control" id="name" name="estimated_amount_of_business" placeholder="사업추정액" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업추정액'">
                                </div>
                                <div class="form-group col-lg-6 col-md-6 email">
                                    <h4 style="color: black;">공고기한</h4>
                                  <input type="text" class="form-control" id="name" name="government_publicly_announced" placeholder="공고기한" onfocus="this.placeholder = ''" onblur="this.placeholder = '공고기한'">
                                </div>										
                              </div>
                            
                            </div>
                            <div id="row">
                               
                            
                            
                                <div class="col-md-12">&nbsp;</div>
                            </div>
                            <h4 style="color: black; text-align: left;">사업내용</h4>
                            <div class="form-group">
                                <textarea class="form-control mb-10" rows="10" name="business_details" placeholder="사업내용"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = '사업내용'"
                                    required=""></textarea>
                            </div>
                            <div id="row">
                                <div class="col-md-12">&nbsp;</div>
                            </div>
                            
                            
                            <input type="submit" value='제출하기' class="primary-btn submit_btn"/>
                        </form>
                    </div>
                </div>
            </div>
    </section>

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