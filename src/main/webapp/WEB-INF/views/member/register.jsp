<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<link type="text/css" href="../resources/css/register.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">


<title>회원가입</title>

</head>
<body id="background">   
  <div class="register">
    <h3>SIGN-UP</h3>
    <form action="/member/register" method="post">
    
        <div class="flex">
            <ul class="container">
                <li class="item center">
                    아이디
                </li>              
                <li>
                    <input type="text" class=id_input id="userId" name="userId" placeholder="아이디를 입력하세요." required>
                   <span class="id_input_re_1" style="color:blue;display:none">사용 가능한 아이디입니다.</span>
            <span class="id_input_re_2" style="color:red;display:none">아이디가 이미 존재합니다.</span>               
                </li>           
                  
                   
            </ul>
            
            <ul class="container">
                <li class="item center">
                    비밀번호
                </li>
                <li class="item">
                    <input type="password" id="userPwd" name="userPwd" placeholder="비밀번호를 입력하세요." required>
                </li>
            </ul>
            <!-- <ul class="container">
            <li class="item center">
                    비밀번호 확인
                </li>
                <li class="item">
                    <input type="password" id="userPwd2" name="userPwd2" placeholder="비밀번호를 한번 더 입력하세요." required>
                </li>
            </ul> -->
             <ul class="container">
                <li class="item center">
                    이름
                </li>
                <li class="item">
                    <input type="text" id="userName" name="userName" placeholder="이름을 입력하세요." required>
                </li>
            </ul>   
            <ul class="container">
                <li class="item center">
                    이메일
                </li>
                <li class="item center">
                    <input type="email" id="email" name="email"placeholder="이메일을 입력하세요" required>
                </li>
            </ul>
            <ul class="container">
                <li class="item center">
                    전화번호
                </li>
                <li class="item">
                    <input type="text" id="phoneNo" name="phoneNo"placeholder="전화번호를 입력하세요">
                </li>
                
            </ul>
            <ul class="container">
                <li class="item center">
                    주소
                </li>
                <li class="item">
                    <input type="text" id="address" name="address"placeholder="주소를 입력하세요">
                </li>
                
            </ul>
            <ul class="container">
                <li class="item center">
                    생년월일
                </li>
                <li class="item">
                    <input type="date" id="regDate" name="regDate" >
                </li>
            </ul>
            
            
            <ul class="container">
                <li class="item center">
                    
                </li>
                <li class="item">
                    <input type="submit" id="register" class="submit" value="가입하기" style="margin-bottom:5px;">
                </li>
            </ul>
            <a href="./main" style="font-weight:bold; margin-left:360px;">홈으로</a>
        </div>
    </form>
</div>
<script type="text/javascript">
//아이디 중복검사
$(document).ready(function(){
$('.id_input').on("propertychange change keyup paste input", function(){

   var userId = $('.id_input').val();         // .id_input에 입력되는 값
   var data = {userId : userId}            // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
   
   $.ajax({
      type : "post",
      url : "/member/memberIdChk",
      data : data,
      success : function(result){
         // console.log("성공 여부" + result);
         if(result != 'fail'){
            $('.id_input_re_1').css("display","inline-block");
            $('.id_input_re_2').css("display", "none");            
         } else {
            $('.id_input_re_2').css("display","inline-block");
            $('.id_input_re_1').css("display", "none");            
         }
         
      }// success 종료
   });   

});
});
</script>
</body>

</html>