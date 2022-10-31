<%@page import="poly.dto.LandscapingDTO"%>
<%@page import="poly.dto.GovPublicOfficialDTO"%>
<%@page import="poly.dto.PriEnterpriseDTO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String sessionPart = (String)request.getAttribute("sessionPart");
 	
 %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="/resource/img/favicon.png" type="image/png">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type ="text/javascript">
  	
  	function loadJson(){
  		$.ajax({
  			url:"/ajaxBusinessList.do",
  			type:"get",
  			dataType:"json",
  			success: ajaxHtml,
  			error:function(){alert("error");}
  		});
  	}
  	
  	function loadJsonTwo(){
  		$.ajax({
  			url:"/ajaxBusinessList2.do",
  			type:"get",
  			dataType:"json",
  			success: ajaxHtml,
  			error:function(){alert("error");}
  		});
  	}
  	
  	function loadJsonThree(){
  		$.ajax({
  			url:"/ajaxBusinessList3.do",
  			type:"get",
  			dataType:"json",
  			success: ajaxHtml,
  			error:function(){alert("error");}
  		});
  	}
  	
  	function ajaxHtml(data){
  		var html="<table>";
  		html+="<tr>";
  		html+="<th>1</th>";
  		html+="<th>2</th>";
  		html+="<th>3</th>";
  		html+="<th>4</th>";
  		html+="<th>5</th>";
  		html+="<th>6</th>";  	
  		html+="<th>7</th>";  
  		html+="</tr>";
  		
  		$.each(data, (index, obj)=>{ 
  			html+="<tr>";
  	  		html+="<td>"+obj.public_official_no+"</td>";
  	  		html+="<td>"+obj.public_official_id+"</td>";
  	  		html+="<td>"+obj.password+"</td>";
  	  		html+="<td>"+obj.name+"</td>";
  	  		html+="<td>"+obj.affiliated_department+"</td>";
  	  		html+="<td>"+obj.public_official_tel+"</td>";
  	  		html+="<td>"+obj.cities_no+"</td>";
  	  		html+="</tr>";
  		})
  		html+="</table>";
  		
  		$("#ajaxBusinessList").html(html);
  	}
  
  </script>
      
</head>

<body>

    <!--================Header Menu Area =================-->
    <header class="header_area">
        <div class="top_menu">
            <div class="container">
                <div class="top_inner">
                    <div class="float-left">
                        <a href="/logout.do">로그아웃</a>
                        <input type="hidden" id="sessionID" value="${sessionScope.sessionID}"/>
                        <input type="hidden" id="sessionPart" value="${sessionScope.sessionPart}"/>
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
        <%
        if(sessionPart.equals("land")){
     		List<LandscapingDTO> Llist = (List<LandscapingDTO>)request.getAttribute("Detail");
     		for(LandscapingDTO dto : Llist){%>
     			 <div class="info-container">
            <div class="flex-item" id="company_part">
                <p class="info-label">분야</p>
                <p class="info-label" id="info-text"><%= dto.getField_of_business_name() %></p>
            </div>
            <div class="flex-item" id="company_name">
                <p class="info-label">기업명</p>
                <p class="info-label" id="info-text"><%= dto.getCompany_name() %></p>
            </div>
            <div class="flex-item" id="company_people">
                <p class="info-label">가용인원수</p>
                <p class="info-label" id="info-text"><%= dto.getAvailable_staff() %></p>
            </div>
            <div class="flex-item" id="company_regist_number">
                <p class="info-label">사업자번호</p>
                <p class="info-label" id="info-text"><%= dto.getBusiness_registration_number() %></p>
            </div>
            <div class="flex-item" id="company_tel">
                <p class="info-label">전화번호</p>
                <p class="info-label" id="info-text"><%= dto.getCompany_tel() %></p>
            </div>
            <div class="flex-item" id="company_sale">
                <p class="info-label">매출액</p>
                <p class="info-label" id="info-text"><%= dto.getSales() %></p>
            </div>
     			
     			
     		<% } 
     	}
     	else if(sessionPart.equals("gov")){
     		List<GovPublicOfficialDTO> gList = (List<GovPublicOfficialDTO>)request.getAttribute("Detail");
			for(GovPublicOfficialDTO dto : gList){ %>
     			 <div class="info-container">
            <div class="flex-item" id="gov_name">
                <p class="info-label">이름</p>
                <p class="info-label" id="info-text"><%= dto.getName() %></p>
            </div>
            <div class="flex-item" id="gov_part">
                <p class="info-label">소속부서</p>
                <p class="info-label" id="info-text"><%= dto.getAffiliated_department() %></p>
            </div>
            <div class="flex-item" id="gov_tel">
                <p class="info-label">전화번호</p>
                <p class="info-label" id="info-text"><%= dto.getPublic_official_tel() %></p>
            </div>
            <div class="flex-item" id="gov_addr">
                <p class="info-label">주소</p>
                <p class="info-label" id="info-text"><%= dto.getMetropolitan_city_name() %>&nbsp;<%= dto.getCities_name() %></p>
            </div>

     		<% }
     	}
     	else if(sessionPart.equals("pri")){ 
        	List<PriEnterpriseDTO> pList = (List<PriEnterpriseDTO>)request.getAttribute("Detail");
        	for(PriEnterpriseDTO dto : pList) { %>
     			 <div class="info-container">
            <div class="flex-item" id="pri_name">
                <p class="info-label">기업명</p>
                <p class="info-label" id="info-text"><%= dto.getPri_enterprise_name() %></p>
            </div>
            <div class="flex-item" id="pri_tel">
                <p class="info-label">전화번호</p>
                <p class="info-label" id="info-text"><%= dto.getPri_enterprise_tel() %></p>
            </div>
            <div class="flex-item" id="pri_regist_number">
                <p class="info-label">사업자등록번호</p>
                <p class="info-label" id="info-text"><%= dto.getPri_registration_number() %></p>
            </div>
            <div class="flex-item" id="pri_addr">
                <p class="info-label">주소</p>
                <p class="info-label" id="info-text"><%= dto.getMetropolitan_city_name() %>&nbsp;<%= dto.getCities_name() %></p>
            </div> 

     		<% }
     	}%>
            <a class="banner_btn" id="info-modify-btn" href="mypageModify.do">개인정보수정</a>
        </div>
        <br /><br /><br /><br />
        <h1>사업현황</h1>
        <div class="business-card-box" style="padding: auto;">
            <div class="box" id="allBusiness" onclick="loadJson()">
                <img class="img" src="../resource/img/mypage/allSelect.png" alt="">
                <h1 class="heading">전체 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
            <div class="box" id="waitBusiness" onclick="loadJsonTwo()">
                <img class="img" src="../resource/img/mypage/wait.png" alt="">
                <h1 class="heading">입찰 대기 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
            <div class="box" id="processBusiness" onclick="loadJsonThree()">
                <img class="img" src="../resource/img/mypage/progress.png" alt="">
                <h1 class="heading">진행중 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
            <div class="box" id="completeBusiness" onclick="">
                <img class="img" src="../resource/img/mypage/complete.png" alt="">
                <h1 class="heading">완료 사업</h1>
                <p class="texts">
                <p class="business-count">0</p><strong>건</strong>
                </p>
            </div>
        </div>
        <div class="business-table" id="ajaxBusinessList">
           
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