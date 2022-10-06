<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../resources/css/mypage.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>


<title>마이페이지</title>
</head>
<body>
<script>

function btn(){
    alert('회원정보가 수정되었습니다.');
}
</script>
   <div class="w3-content w3-container w3-margin-top">
      <div class="w3-container w3-card-4">
         <div class="w3-center w3-large w3-margin-top">
            <h3>My Page</h3>
         </div>
         <div>
            <form id="mypage" action="/member/mypage" method="post">
               <p>
                  <label>ID</label> 
                  <input class="w3-input" type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"> 
               </p>
                    <p>
                  <label>Password</label>
                  <input class="w3-input" id="userPwd" name="userPwd" type="password"  value="${member.userPwd}" required>
               </p>
               <p>
                  <label>Email</label> 
                  <input class="w3-input" type="text" id="email" name="email"  value="${member.email}" required> 
               </p>
            <!-- </form>
            <form id="pwForm" action="../member/update_pw.do" method="post">    -->
               <p>
                  <label>Phone</label> 
                  <input class="w3-input" id="phoneNo" name="phoneNo" type="text"  value="${member.phoneNo}" required>
               </p>
               <p>
                  <label>Birth</label>
                  <input class="w3-input" type="date" id="regDate" name="regDate" value="${member.regDate}"  required>
               </p>
               <p class="w3-center">
                  <button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" onclick="javascript:btn();">회원정보 변경</button>
               </p>
                <p class="w3-center">
                  <a href="./memberDelete" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원 탈퇴하기</a>
               </p>
               <p class="w3-center">
                  <a href="./main2" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">홈으로 가기</a>
               </p>
            </form>
         </div>
      </div>
   </div>
</body>
</html>