<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
    <div id="background">
        <form action="/member/login" method="post" class="wrap">
        <div class="login">
            <h2>Log-in</h2>
            
            <div class="login_id">
                <h4>ID</h4>
                <input type="text" name="userId" id="userId" placeholder="아이디를 입력하세요.">
            </div>

            <div class="login_pw">
                <h4>PW</h4>
                <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호를 입력하세요.">
            </div>
         <div class="submit">
                <input type="submit" value="로그인">
            </div>
            <div class="login_etc">
                <a href="./register">회원가입</a>
                <a href="./main">홈으로</a>
                

            </div>

            
            </div>
        </form>
    </div>


</body>
</html>