<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/resource/css/userModify.css">
</head>

<body>
           					 <input type="hidden" id="sessionID" value="${sessionScope.sessionID}"/>
           					 <input type="hidden" id="sessionPart" value="${sessionScope.sessionPart}"/>
    <h1>개인정보수정</h1>
    <hr>
    <div style="width:100%; padding: 1%;">
        <div class="menu">
            <ul>
                <li><a href="govUserModify.jsp" class="item">
                        <div>개인정보수정</div>
                    </a></li>
                <li><a href="govChangePasswd.jsp" class="item">
                        <div>비밀번호변경</div>
                    </a></li>
                <li><a href="govUserDelete.jsp" class="item">
                        <div>회원탈퇴</div>
                    </a></li>
                <li><a href="govContact.jsp" class="item">
                        <div>돌아가기</div>
                    </a></li>
            </ul>
        </div>

        <div class="input-form">
            <form>
                <div class="abc" >
                    <p class="abc_p"><strong>ID</strong></p>
                    <input type="text" class="textbox" name="companyName" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>이름</strong></p>
                    <input type="text" class="textbox" name="companyName" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>소속부서</strong></p>
                    <input type="text" class="textbox" name="companyCEO" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>소속지역</strong></p>
                    <input type="text" class="textbox" name="businessNumber" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>전화번호</strong></p>
                    <input type="text" class="textbox" name="companyDate" value="">
                </div>

                <p>
                    <input type="submit" class="banner-btn" value="수정" style="margin-left: 28%;">
                </p>
            </form>

        </div>
    </div>
</body>

</html>