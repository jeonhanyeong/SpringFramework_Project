<%@page import="poly.dto.TableDTO"%>
<%@page import="java.util.List"%>
<%@page import="static poly.util.CmmUtil.nvl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String Business_progress_no = request.getParameter("leid");
    
    	List<TableDTO> tList = (List<TableDTO>)request.getAttribute("tList");
    %>
<!DOCTYPE html>
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
  <style>
    h3{
      font-size: 20px;
    }
  </style>
</head>

<body>

  <!--================Home Banner Area =================-->
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
            	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
				<div class="container">
					<div class="banner_content text-center">
						<h2>사업 진행 상황 게시판</h2>
						<div class="page_link">
						</div>
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
  <!--================Blog Categorie Area =================-->

  <div class="comment-form" style="width: 80%; margin: auto; margin-top: 3%;">
    <form>
    <% for(TableDTO e : tList){ %>
      <div>
        <h4 style="margin-bottom:40px; font-size: 30px;">사업명</h4>
        <input type="text" style="text-align: center;" class="form-control" id="business_title" readonly="readonly" value="<%= e.getProgress_title() %>">
      </div>
      <div style='margin: 50px 0 0px 0;'></div>
      <div>
        <h4 style="margin-bottom:40px; font-size: 30px;">사업내용</h4>
        <textarea class="form-control mb-10" rows="5" name="business_details" readonly="readonly"><%= e.getProgress_detailed() %></textarea>
      </div>
      <div>
        <h4 style="margin:40px 0; font-size: 30px;">자료 다운로드</h4>
      </div>
      <div style='margin: 50px 0 0px 0;'></div>
      <a href="boradTable.do" class="primary-btn submit_btn">목록보기</a>
      <%} %>
    </form>
  </div>




</html>