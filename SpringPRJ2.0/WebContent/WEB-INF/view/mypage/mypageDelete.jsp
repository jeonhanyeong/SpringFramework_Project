<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String sessionPart = (String)request.getAttribute("sessionPart");
 	
 %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="/resource/img/favicon.png" type="image/png">
    <title>회원탈퇴</title>
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
            <form>
                <div class="abc">
                    <input type="text" class="deleteCaution" name="deleteCaution" value="대충 내용내용내용">
                </div>
                <div class="abc">
                    <input type="checkbox" class="deleteCheck" name="deleteCheck" value="">동의합니다. 
                    <input type="checkbox" class="deleteCheck" name="deleteCheck" value="">동의하지않습니다. 
                </div>
                <p>
                    <input type="submit" class="banner-btn" id="delete-btn" value="회원탈퇴">
                </p>
            </form>

        </div>
    </div>
</body>

</html>