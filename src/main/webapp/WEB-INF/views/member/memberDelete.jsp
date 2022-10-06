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
<style>
input::placeholder {
  color: red;
  }
</style>

<title>회원탈퇴</title>
</head>
<body>
<!-- <script>

function btn(){
   var msg = '<c:out value="${msg}"/>';
   console.log('msg :', msg);
   if(msg == "removeFalse") { //다르거나 널이면 
      alert("가입한 비밀번호를 다시 입력해주세요.");
   }
   else{ //같으면
      alert("회원 탈퇴가 정상적으로 처리되었습니다. 이용해 주셔서 감사합니다.");
   }
}

</script> -->
   <div class="w3-content w3-container w3-margin-top">
      <div class="w3-container w3-card-4">
         <div class="w3-center w3-large w3-margin-top">
            <h3>회원 탈퇴</h3>
         </div>
         <div>
            <form id="memberDelete" action="/member/memberDelete" method="post">
               <p>
                  <label>ID</label> 
                  <input class="w3-input" type="text" id="userId" name="userId" value="${member.userId}" readonly> 
               </p>
                    <p>
                  <label>Password</label>
                  <input class="w3-input" id="userPwd" name="userPwd" type="password" placeholder="탈퇴를 위해 비밀번호를 입력해주세요."required>
               </p>
               <p>
                  <label>Email</label> 
                  <input class="w3-input" type="text" id="email" name="email"  value="${member.email}" readonly > 
               </p>
            <!-- </form>
            <form id="pwForm" action="../member/update_pw.do" method="post">    -->
               <p>
                  <label>Phone</label> 
                  <input class="w3-input" id="phoneNo" name="phoneNo" type="text"  value="${member.phoneNo}" readonly>
               </p>
               <p>
                  <label>Birth</label>
                  <input class="w3-input" type="date" id="regDate" name="regDate" value="${member.regDate}"  readonly>
               </p>
               <p class="w3-center">
                  <button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">탈퇴 하기</button>
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