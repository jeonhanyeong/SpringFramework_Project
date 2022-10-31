<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="/resource/img/favicon.png" type="image/png">
        <title>메인페이지</title>
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
            <div class="banner_inner">
				<div class="container">
					<div class="row">
						<div class="col-lg-8">
							<div class="banner_content">
								<h2> <br />조경 매칭 시스템</h2>
								<p>아름답고 유용하고 건강한 환경을 조성하기 위해 인문적·과학적 지식을 응용하여 토지를 계획·설계·시공·관리하는 예술. 조경은 회화·조각·산업디자인·건축·토목·도시계획 등의 분야와 밀접한 관계를 갖는다.</p>
								<!--<a class="banner_btn" href="#">Get Started</a>-->
							</div>
						</div>
						<div class="col-lg-4">
							<div class="home_right_box">
								<div class="home_item">
									<i class=""><img src="/resource/img/icon/freesia.png" style="width:40px;"/></i>
								</div>
								<div class="home_item">
									<i class=""><img src="/resource/img/icon/fountain.png" style="width:40px;"/></i>
								</div>
								<div class="home_item">
									<i class=""><img src="/resource/img/icon/mountain.png" style="width:40px;"/></i>
								</div>
								<div class="home_item">
									<i class=""><img src="/resource/img/icon/park.png" style="width:40px;"/></i>
								</div>
								<div class="home_item">
									<i class=""><img src="/resource/img/icon/woodland.png" style="width:40px;"/></i>
								</div>
								<div class="home_item">
									<i class=""><img src="/resource/img/icon/building.png" style="width:40px;"/></i>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Furniture Area =================-->
        <section class="furniture_area p_120">
        	<div class="container">
        		<div class="main_title">
        			<h2>사업 시스템</h2>
        			<p></p>
        		</div>
        		<div class="furniture_inner row">
        			<div class="col-lg-4">
        				<div class="furniture_item">
        					<img class="img-fluid img-fluid2" src="/resource/img/view/view1.jpg" alt="">
        					<h4>공원 조성</h4>
        					<p>국가의 정책목적 달성을 위하여 도시공원을 설치할 필요가 있는 경우 공원조성계획의 입안 등 필요한 조치를 하도록 요청할 수 있으며, 그 요청을 받은 군수는 특별한 사유가 없는 한 지체 없이 이에 따라야 한다.</p>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<div class="furniture_item">
        					<img class="img-fluid img-fluid2" src="/resource/img/view/view2.jpg" alt="">
        					<h4>호수길 조성</h4>
        					<p>물길 따라 대청호쉼표정원조성사업을 통해 향수호수 길의 중간지점인 황새터를 중심으로 생태탐방길 산책로를 따라 2만 8000㎡ 규모 생태관광 공간을 조성한다.</p>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<div class="furniture_item">
        					<img class="img-fluid img-fluid2" src="/resource/img/view/view3.jpg" alt="">
        					<h4>산지 조성</h4>
        					<p>주택가 인근 산 자락에 노약자, 장애인, 어린이, 유아, 임산부 등 보행약자도 숲이 제공하는 혜택을 누릴 수 있도록 경사가 완만한 산책로 조성. 휠체어 및 유모차도 이용할 수 있도록 “무장애숲길” 조성</p>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Furniture Area =================-->
        
        <!--================Projects Area =================-->
        <section class="projects_area">
        	<div class="row m0">
        		<div class="projects_item wd_18 pr_style">
					<img src="/resource/img/projects/projects-1.jpg" alt="">
					<div class="hover">
						<h4>용산공원</h4>
						<p>용경기 평택으로 완전 이전한 뒤 조성될 용산공원 규모가 당초 계획보다 20% 이상 늘어난 300만㎡로 정해졌다</p>
					</div>
				</div>
				<div class="projects_item wd_18 pr_style">
					<img src="/resource/img/projects/projects-2.jpg" alt="">
					<div class="hover">
						<h4>서울한강공원</h4>
						<p>서울시 한강사업본부는 도심 속 휴식공간으로 사랑받는 난지캠핑장 일대 2만7000㎡를 전면 리모델링</p>
					</div>
				</div>
				<div class="projects_item wd_44 pr_style">
					<img src="/resource/img/projects/projects-3.jpg" alt="">
					<div class="hover">
						<h4>수소에너지공원</h4>
						<p>부안군청 앞 부안읍 남문안길 4번지 일대에 230억을 들여 ‘자연에너지 공원’ 조성을 추진</p>
					</div>
				</div>
				<div class="projects_item wd_18 pr_style">
					<img src="/resource/img/projects/projects-4.jpg" alt="">
					<div class="hover">
						<h4>세종시 둘레길</h4>
						<p>L관내 12개 구간 159㎞에 이르는 세종시계 둘레길을 조성</p>
					</div>
				</div>
        	</div>
        </section>
        <!--================End Projects Area =================-->
        
		<!--================Our Blog Area =================-->
        <section class="our_blog_area p_120">
        	<div class="container">
        		<div class="main_title">
        			<h2>사업공고</h2>
        			<p>정부, 민간사업 등 조경사업 안내</p>
        		</div>
        		<div class="blog_inner row">
        			<div class="col-lg-4">
        				<div class="o_blog_item">
        					<div class="blog_img">
        						<img class="img-fluid" src="/resource/img/public/public1.jpg" alt="">
        					</div>
        					<div class="blog_text">
        						<div class="blog_cat">
        							<!--<a class="active" href="#">Travel</a>-->
        							<a href="#">공고</a>
        						</div>
        						<a href="#"><h4>호수길 조성</h4></a>
        						<p>간단한 정보 <br/>2022년 12월 12일까지</p>
        						<a class="date" href="#">n명이 서류를 재출했습니다</a>
        					</div>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<div class="o_blog_item">
        					<div class="blog_img">
        						<img class="img-fluid" src="/resource/img/public/public2.jpg" alt="">
        					</div>
        					<div class="blog_text">
        						<div class="blog_cat">
        							<!--<a class="active" href="#">Travel</a>-->
        							<a href="#">공고</a>
        						</div>
        						<a href="#"><h4>산지 계발</h4></a>
        						<p>간단한 정보 <br/>2022년 12월 12일까지</p>
        						<a class="date" href="#">n명이 서류를 재출했습니다</a>
        					</div>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<div class="o_blog_item">
        					<div class="blog_img">
        						<img class="img-fluid" src="/resource/img/public/public3.jpg" alt="">
        					</div>
        					<div class="blog_text">
        						<div class="blog_cat">
        							<!--<a class="active" href="#">Travel</a>-->
        							<a href="#">공고</a>
        						</div>
        						<a href="#"><h4>공원 조성</h4></a>
        						<p>간단한 정보 <br/>2022년 12월 12일까지</p>
        						<a class="date" href="#">n명이 서류를 재출했습니다</a>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Our Blog Area =================-->
        
        
        <!--================Impress Area =================-->
        <section class="impress_area p_120">
        	<div class="container">
        		<div class="impress_inner text-center">
					<h2>더 간편하고 더 쉽게<br />조경 사업을 매칭해드립니다</h2>
					<p>믿고 맏길 수 있는 매칭 시스템</p>
					<!--<a class="main_btn" href="#">Read Details</a>-->
        		</div>
        	</div>
        </section>
        <!--================End Impress Area =================-->
        
        <!--================Feature Area =================-->
        <section class="feature_area p_120">
        	<div class="container">
        		<div class="main_title">
        			<h2>진행중인 사업</h2>
        			<p>사업 진행형황</p>
        		</div>
        		<div class="row feature_inner">
        			<div class="col-lg-4 col-md-6">
        				<div class="feature_item">
        					<h4><i class="lnr"><img src="/resource/img/icon/dossier.png" style="width:24px;"></i>사업내용1</h4>
        					<p>사업내용1의 본문</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-md-6">
        				<div class="feature_item">
        					<h4><i class="lnr"><img src="/resource/img/icon/dossier.png" style="width:24px;"></i>사업내용2</h4>
        					<p>사업내용2의 본문</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-md-6">
        				<div class="feature_item">
        					<h4><i class="lnr"><img src="/resource/img/icon/dossier.png" style="width:24px;"></i>사업내용3</h4>
        					<p>사업내용3의 본문.</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-md-6">
        				<div class="feature_item">
        					<h4><i class="lnr"><img src="/resource/img/icon/dossier.png" style="width:24px;"></i>사업내용4</h4>
        					<p>사업내용4의 본문</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-md-6">
        				<div class="feature_item">
        					<h4><i class="lnr"><img src="/resource/img/icon/dossier.png" style="width:24px;"></i>사업내용5</h4>
        					<p>사업내용5의 본문</p>
        				</div>
        			</div>
        			<div class="col-lg-4 col-md-6">
        				<div class="feature_item">
        					<h4><i class="lnr"><img src="/resource/img/icon/dossier.png" style="width:24px;"></i>사업내용6</h4>
        					<p>사업내용6의 본문</p>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Feature Area =================-->
        
        
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