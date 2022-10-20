<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <title>Woodrox Furniture</title>
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
    <link rel="stylesheet" href="../resource/css/myPageStyle.css">
</head>

<body>

    <!--================Header Menu Area =================-->
    <header class="header_area">
        <div class="top_menu">
            <div class="container">
                <div class="top_inner">
                    <div class="float-left">
                        <a href="#">로그아웃</a>
                    </div>
                    <div class="float-right">
                        <ul class="list header_socila">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu" id="mainNav">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.html"><img src="/resource/img/logo.png" alt=""><img
                            src="/resource/img/logo-2.png" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="../notice/notice.do">공지사항</a></li>
                            <li class="nav-item"><a class="nav-link" href="about-us.html">진행현황</a></li>
                            <!--<li class="nav-item submenu dropdown">
                                 <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
                                 <ul class="dropdown-menu">
                                     <li class="nav-item"><a class="nav-link" href="projects.html">Project</a></li>
                                     <li class="nav-item"><a class="nav-link" href="project-details.html">Project Details</a></li>
                                     <li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
                                 </ul>
                             </li> -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false">사업공고</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.html">정부사업</a></li>
                                    <li class="nav-item"><a class="nav-link" href="single-blog.html">민간사업</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="/mypage.do">마이페이지</a></li>
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
        <h1>기업정보</h1><br />
        
        <div class="info-container">
            <div class="flex-item" id="company_part">
                <p class="info-label">분야</p>
                <p class="info-label" id="info-text">공원조경</p>
            </div>
            <div class="flex-item" id="company_name">
                <p class="info-label">기업명</p>
                <p class="info-label" id="info-text">준오헤어</p>
            </div>
            <div class="flex-item" id="company_ceo">
                <p class="info-label">대표자</p>
                <p class="info-label" id="info-text">김준오</p>
            </div>
            <div class="flex-item" id="company_number">
                <p class="info-label">사업자번호</p>
                <p class="info-label" id="info-text">6052-142421-421</p>
            </div>
            <div class="flex-item" id="company_date">
                <p class="info-label">설립일자</p>
                <p class="info-label" id="info-text">1974-08-20</p>
            </div>
            <div class="flex-item" id="company_addr">
                <p class="info-label">주소</p>
                <p class="info-label" id="info-text">서울특별시 강남구 역삼동</p>
            </div>
            <a class="banner_btn" id="info-modify-btn" href="mypageModify.do">개인정보수정</a>
        </div>
        <br /><br /><br /><br />
        <h1>사업현황</h1>
        <div class="business-card-box" style="padding: auto;">
            <div id="box">
                <img class="img" src="../resource/img/mypage/allSelect.png" alt="">
                <h1 class="heading">전체 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
            <div id="box">
                <img class="img" src="../resource/img/mypage/wait.png" alt="">
                <h1 class="heading">입찰 대기 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
            <div id="box">
                <img class="img" src="../resource/img/mypage/progress.png" alt="">
                <h1 class="heading">진행중 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
            <div id="box">
                <img class="img" src="../resource/img/mypage/complete.png" alt="">
                <h1 class="heading">완료 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
        </div>
        <div class="business-table">
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>사업명</th>
                        <th>담당자</th>
                        <th>총예산</th>
                        <th>기간</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>8</td>
                        <td>Marco Belinelli</td>
                        <td>G</td>
                        <td>6-5</td>
                        <td>195</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Carlos Boozer</td>
                        <td>F</td>
                        <td>6-9</td>
                        <td>266</td>
                    </tr>
                    <tr>
                        <td>21</td>
                        <td>Jimmy Butler</td>
                        <td>G-F</td>
                        <td>6-7</td>
                        <td>220</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Luol Deng</td>
                        <td>F</td>
                        <td>6-9</td>
                        <td>220</td>
                    </tr>
                    <tr>
                        <td>22</td>
                        <td>Taj Gibson</td>
                        <td>F</td>
                        <td>6-9</td>
                        <td>225</td>
                    </tr>
                    <tr>
                        <td>32</td>
                        <td>Richard Hamilton</td>
                        <td>G</td>
                        <td>6-7</td>
                        <td>193</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>Kirk Hinrich</td>
                        <td>G</td>
                        <td>6-4</td>
                        <td>190</td>
                    </tr>
                    <tr>
                        <td>48</td>
                        <td>Nazr Mohammed</td>
                        <td>C</td>
                        <td>6-10</td>
                        <td>250</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Joakim Noah</td>
                        <td>C</td>
                        <td>6-11</td>
                        <td>232</td>
                    </tr>
                    <tr>
                        <td>77</td>
                        <td>Vladimir Radmanovic</td>
                        <td>F</td>
                        <td>6-10</td>
                        <td>235</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Nate Robinson</td>
                        <td>G</td>
                        <td>5-9</td>
                        <td>180</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Derrick Rose</td>
                        <td>G</td>
                        <td>6-3</td>
                        <td>190</td>
                    </tr>
                    <tr>
                        <td>25</td>
                        <td>Marquis Teague</td>
                        <td>G</td>
                        <td>6-2</td>
                        <td>190</td>
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
    <!--================End Footer Area =================-->


    <!--================End Contact Success and Error message Area =================-->




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
    <!-- contact js -->
    <script src="../resource/js/jquery.form.js"></script>
    <script src="../resource/js/jquery.validate.min.js"></script>
    <script src="../resource/js/contact.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="../resource/js/gmaps.min.js"></script>
    <script src="../resource/js/theme.js"></script>
</body>

</html>