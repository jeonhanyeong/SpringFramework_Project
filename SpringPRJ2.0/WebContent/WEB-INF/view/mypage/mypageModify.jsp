<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인정보수정</title>
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
                <div class="abc" >
                    <p class="abc_p"><strong>사업분야</strong></p>
                  <select name='business-field'>
                    <option value='' selected>-- 선택 --</option>
                    <option value='apple'>DB분야명1</option>
                    <option value='banana'>DB분야명2</option>
                    <option value='lemon'>DB분야명3</option>
                  </select>
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>기업명</strong></p>
                    <input type="text" class="textbox" name="companyName" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>대표자</strong></p>
                    <input type="text" class="textbox" name="companyCEO" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>사업자등록번호</strong></p>
                    <input type="text" class="textbox" name="businessNumber" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>설립일자</strong></p>
                    <input type="text" class="textbox" name="companyDate" value="">
                </div>
                <div class="abc">
                    <p class="abc_p"><strong>주소</strong></p>
                    <input type="text" class="textbox" name="companyAddr" value="">
                </div>

                <p>
                    <input type="submit" class="banner-btn" value="수정">
                </p>
            </form>

        </div>
    </div>
</body>

</html>