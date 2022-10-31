<%@ page import="java.util.List" %>
<%@ page import="poly.dto.GovBoardDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="poly.dto.GovBoardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<% 
	List<GovBoardDTO> gbList = (List<GovBoardDTO>)request.getAttribute("gbList");

	if(gbList==null) {
		gbList = new ArrayList<GovBoardDTO>();
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/resource/img/favicon.png" type="image/png">
    <title>governmentBoardTable</title>
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
    <link rel="stylesheet" href="/resource/css/boardtable.css">
    
    <!-- Bootstrap CSS -->
    <link href="maincss.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="/skin/shop/basic/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/skin/shop/basic/css/common.css">
    <link rel="stylesheet" href="/skin/shop/basic/css/one&amp;one_main_new.css">

    <link rel="stylesheet" href="css/IndexStyle.css">

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
                    <h2>정부사업 공고게시판</h2>
                    <div class="page_link">
                        <a href="index.html">HOME</a>
                        <a href="single-blog.html">정부사업 공고게시판</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Blog Area =================-->
    <section class="blog_area single-post-area p_120" id="table_section" ;>
        <!-- <div class="container" id="board_class"> -->
        <!-- <div class="row"> -->
        <!-- <div class="col-lg-8 posts-list"> -->
        <!-- <div class="single-post row" > -->
        <!-- <div class="col-lg-3  col-md-3">
                            <div class="blog_info text-right">

                                <ul class="blog_meta list">
                                    <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li>
                                    <li><a href="#">글 작성하기<i class="lnr lnr-calendar-full"></i></a></li>
                                    <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li>
                                    <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li>
                                </ul>
                            </div>
                        </div> -->
        <!-- <div class="col-lg-9 col-md-9 blog_details" id="board_class"> -->
        <h2 id="board_head">정부사업 공고게시판</h2>

        <ul class="blog_meta list" id="board_write">
            <!-- <li><a href="#">Mark wiens<i class="lnr lnr-user"></i></a></li> -->
            <div style="right:0%; width: 400px;">
            <input type="text">
            <a class="banner_btn" href="#" style="width:20%; line-height: 30px;">검색</a>
            <a class="banner_btn" href="opengovernmentBoardRegist.do" style="width:30%; line-height: 30px;">글 작성하기</a>
            </div>
            <!-- <li id="board_write"><a href="#" id="write_text">글 작성하기 <i class="fa fa-heart-o" aria-hidden="true"></i></a></li> -->
            <!-- <li><a href="#">글 작성하기<i class="lnr lnr-calendar-full"></i></a></li> -->
            <!-- <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li> -->
            <!-- <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li> -->
        </ul>

        <table class="table table-striped" id="table1">
       
                <tr>
                    <th scope="col"></th>
                    <th scope="col">제목</th>
                    <th scope="col">일시</th>
                    <th scope="col">회사명</th>
                </tr>
                
              <%if(gbList.isEmpty()) {%>
              <tr><td colspan="5"> 등록된 게시물이 없습니다. </td></tr>
              <%} else { %>
              	<%for (GovBoardDTO gbDTO : gbList) {%>
                
     
            <tbody>
                <tr>
                    <th scope="row" id="see" name="government_business_board_no"><%=gbDTO.getGovernment_business_board_no()%></th>
                    <td name="business_title"><%=gbDTO.getBusiness_title()%></td>
                    <td name="registration_date"><%=gbDTO.getRegistration_date()%></td>
                    <td name="company_name"><%=gbDTO.getCompany_name() %></td>
                </tr>
                
            </tbody>
            
           <%} %>
           <%} // end else%>
        </table>

        <!-- </div> -->
        <!-- </div> -->
        <!-- </div> -->
        <!-- </div> -->
        <!-- </div> -->

        <!-- buttom number -->
        <nav aria-label="Page navigation example" id="bottomnumber">
            <ul class="pagination" id="bottomnumber">
                <li class="page-item"><a class="page-link pageStyle" href="#" aria-label="Previous"> <span
                            aria-hidden="true">&laquo;</span>
                    </a></li>
                <li class="page-item"><a class="page-link pageStyle" href="#">&lt</a></li>
                <li class="page-item"><a class="page-link pageStyle" href="#">1</a></li>
                <li class="page-item"><a class="page-link pageStyle" href="#">2</a></li>
                <li class="page-item"><a class="page-link pageStyle" href="#">3</a></li>
                <li class="page-item"><a class="page-link pageStyle" href="#">&gt</a></li>
                <li class="page-item"><a class="page-link pageStyle" href="#" aria-label="Next"> <span
                            aria-hidden="true">&raquo;</span>
                    </a></li>
            </ul>
        </nav>
        <!-- bottom number -->
    </section>



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
    <script src="/resource/js/theme.js"></script>
</body>

</html>