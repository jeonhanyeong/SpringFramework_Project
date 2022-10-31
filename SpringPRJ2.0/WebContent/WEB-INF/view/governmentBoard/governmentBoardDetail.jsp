<%@ page import="poly.dto.GovBoardDTO" %>
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
    </head>
    <body>
                   					 <input type="hidden" id="sessionID" value="${sessionScope.sessionID}"/>
           					 <input type="hidden" id="sessionPart" value="${sessionScope.sessionPart}"/>
        <!--================Header Menu Area =================-->
        
        <!--================Header Menu Area =================-->
        
        <!--================Home Banner Area =================-->
      
        <!--================End Home Banner Area =================-->
        
        <!--================Blog Categorie Area =================-->
        
        <div class="comment-form">
            <h4 style="font-size: 22px;">정부사업공고글</h4>
            <form>
                <div class="form-group form-inline">
                    

                    <div class="container">
                        <div class="row row-cols-4">
                          <div class="col coltitle">글번호: </div>
                          <div class="col"><input type="text" style="text-align: center;" class="form-control" id="goverment_business_board_no" placeholder="글번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '글번호'"><br/></div>
                          <div class="col coltitle">등록날짜: </div>
                          <div class="col"><input type="text" style="text-align: center;" class="form-control" id="registration_date" placeholder="등록날짜" onfocus="this.placeholder = ''" onblur="this.placeholder = '등록날짜'"><br/></div>
                        </div>
                      </div>	
                      <div style='margin: 50px 0 0px 0;'></div>
                            <div class="container">
                                <div class="row row-cols-4">
                                  <div class="col coltitle">사업시작날짜: </div>
                                  <div class="col"><input type="text" style="text-align: center;" class="form-control" id="business_start_date" placeholder="사업시작날짜" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업시작날짜'"><br/></div>
                                  <div class="col coltitle">사업종료날짜: </div>
                                  <div class="col"><input type="text" style="text-align: center;" class="form-control" id="business_end_date" placeholder="사업종료날짜" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업종료날짜'"><br/></div>
                                </div>
                              </div>	
                        <div style='margin: 50px 0 0px 0;'></div>
                              <div class="container">
                                <div class="row row-cols-4">
                                  <div class="col coltitle">사업추정액: </div>
                                  <div class="col"><input type="text" style="text-align: center;" class="form-control" id="estimated_amount_of_business" placeholder="사업추정액" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업추정액'"><br/></div>
                                  <div class="col coltitle">공고기한: </div>
                                  <div class="col"><input type="text" style="text-align: center;" class="form-control" id="goverment_publicly_announced" placeholder="공고기한" onfocus="this.placeholder = ''" onblur="this.placeholder = '공고기한'"><br/></div>
                                </div>
                              </div>
                        		
                </div>
                <div style='margin: 50px 0 0px 0;'></div>
                <div>
                    <h4 style="margin-bottom:40px; font-size: 22px;">사업명</h4> 
                    <input type="text" style="text-align: center;" class="form-control" id="business_title" placeholder="사업명" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업명'">
                </div>
                <div style='margin: 50px 0 0px 0;'></div>
                <div>
                    <h4 style="margin-bottom:40px; font-size: 22px;">사업내용</h4>
                    <textarea class="form-control mb-10" rows="5" name="business_details" placeholder="사업내용" onfocus="this.placeholder = ''" onblur="this.placeholder = '사업내용'" required=""></textarea>
                </div>
                <div style='margin: 50px 0 0px 0;'></div>
                <a href="government/governmentBoardDetail.jsp" class="primary-btn submit_btn">목록보기</a>
                <a href="government/governmentBoardRegist.jsp" class="primary-btn submit_btn">수정하기</a>
                <a href="../govbidding/biddingRegist.jsp" class="primary-btn submit_btn" style="text-align:right">사업계획서 제출하기</a>	
            </form>
        </div>



	
</html>