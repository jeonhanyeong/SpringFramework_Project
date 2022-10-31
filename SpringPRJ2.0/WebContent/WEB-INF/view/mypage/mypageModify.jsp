<%@page import="poly.dto.LandscapingDTO"%>
<%@page import="poly.dto.GovPublicOfficialDTO"%>
<%@page import="poly.dto.PriEnterpriseDTO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 	String sessionPart = (String)request.getAttribute("sessionPart");
	List<String> landpartList = (List<String>)request.getAttribute("partList");
	
	List<LandscapingDTO> Llist = (List<LandscapingDTO>)request.getAttribute("Detail");
	List<GovPublicOfficialDTO> gList = (List<GovPublicOfficialDTO>)request.getAttribute("Detail");
	List<PriEnterpriseDTO> pList = (List<PriEnterpriseDTO>)request.getAttribute("Detail");
 	
 %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/resource/img/favicon.png" type="image/png">
    <title>개인정보수정</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../resource/css/mypageModify.css">
</head>

<body>
     <input type="hidden" id="sessionID" value="${sessionScope.sessionID}"/>
     <input type="hidden" id="sessionPart" value="${sessionScope.sessionPart}"/>
    <h1>개인정보수정</h1>
    <hr>
    <div style="width:100%; padding: 1%;">
        <div class="menu">
            <ul>
                <li><a href="/mypage/mypageModify.do" class="item">
                        <div>개인정보수정</div>
                    </a></li>
                <li><a href="/mypage/mypageChangePW.do" class="item">
                        <div>비밀번호변경</div>
                    </a></li>
                <li><a href="/mypage/mypageDelete.do" class="item">
                        <div>회원탈퇴</div>
                    </a></li>
                <li><a href="/mypage/mypage.do" class="item">
                        <div>돌아가기</div>
                    </a></li>
            </ul>
            
        </div>

        <div class="input-form">
            <form action="mypageModify.do" method=get>            
            <% if(sessionPart.equals("land")){
     			for(LandscapingDTO dto : Llist){%>
     			<div class="abc" >
                    <p class="abc_p"><strong>사업분야</strong></p>
                  <select name='business-field'>
                    <option value='<%= dto.getField_of_business_name() %>' selected><%= dto.getField_of_business_name() %></option>
                    <option value='주거단지'>주거단지</option>
                    <option value='시설원예'>시설원예</option>
                  </select>
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>기업명</strong></p>
                    <input type="text" class="textbox" name="company_name" value="<%= dto.getCompany_name() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>가용인원수</strong></p>
                    <input type="text" class="textbox" name="company_people" value="<%= dto.getAvailable_staff() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>사업자번호</strong></p>
                    <input type="text" class="textbox" name="company_regist_number" value="<%= dto.getBusiness_registration_number() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>전화번호</strong></p>
                    <input type="text" class="textbox" name="company_tel" value="<%= dto.getCompany_tel() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>매출액</strong></p>
                    <input type="text" class="textbox" name="info-text" value="<%= dto.getSales() %>">
                </div>
                <%} 
     		}
     		else if(sessionPart.equals("gov")){
					for(GovPublicOfficialDTO dto : gList){%>
				
                <div class="abc">
                    <p class="abc_p"><strong>이름</strong></p>
                    <input type="text" class="textbox" name="gov_name" value="<%= dto.getName() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>소속부서</strong></p>
                    <input type="text" class="textbox" name="gov_part" value="<%= dto.getAffiliated_department() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>전화번호</strong></p>
                    <input type="text" class="textbox" name="gov_tel" value="<%= dto.getPublic_official_tel() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>주소</strong></p>
                    <input type="text" class="textbox" name="gov_addr" value="<%= dto.getMetropolitan_city_name() %>&nbsp;<%= dto.getCities_name() %>" readonly>
                </div>
			<% }
     	}else if(sessionPart.equals("pri")){
					for(PriEnterpriseDTO dto : pList){%>
                <div class="abc">
                    <p class="abc_p"><strong>기업명</strong></p>
                    <input type="text" class="textbox" name="pri_name" value="<%= dto.getPri_enterprise_name() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>전화번호</strong></p>
                    <input type="text" class="textbox" name="pri_tel" value="<%= dto.getPri_enterprise_tel() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>사업자등록번호</strong></p>
                    <input type="text" class="textbox" name="pri_regist_number" value="<%= dto.getPri_registration_number() %>">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>주소</strong></p>
                    <input type="text" class="textbox" name="pri_addr" value="<%= dto.getMetropolitan_city_name() %>&nbsp;<%= dto.getCities_name() %>" readonly>
                </div><%}
     	}%>
     	
                <p>
                    <input type="submit" class="banner-btn" value="수정">
                </p>
            </form>
            </div>
        </div>
</body>

</html>