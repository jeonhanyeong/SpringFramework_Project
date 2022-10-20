<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호변경</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../resource/css/mypageModify.css">
</head>

<body>
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
                    <p class="abc_p"><strong>아이디</strong></p>
                    <input type="text" class="textbox" name="companyName" value="">
                </div>
                <p>
                    <input type="submit" class="userCheck" value="본인확인">
                </p>
                <div class="abc">
                    <p class="abc_p"><strong>비밀번호</strong></p>
                    <input type="password" class="textbox" name="passwordInput" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>비밀번호확인</strong></p>
                    <input type="password" class="textbox" name="passwordConfirm" value="">
                </div>

                <p>
                    <input type="submit" class="banner-btn" value="비밀번호변경">
                </p>
            </form>

        </div>
    </div>
</body>

</html>