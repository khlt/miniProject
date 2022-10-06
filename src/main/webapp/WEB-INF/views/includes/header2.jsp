<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/headerCss.css" rel="stylesheet" />

    <script src="../resources/jQuery/jquery-3.6.1.min.js"></script>
    <script src="../resources/jQuery/masonry.pkgd.min.js"></script>
</head>
  <header id="main_header">
          <div id="head_top_nav">
            
            <div class="head_top_left">
              <a class="logo" href="/member/main2"><img src="../resources/css/images/bee.png" /></a>
            </div>
            <div class="head_top_right">
              <p style="margin-top:25px">${login.userName}님, 환영합니다.<a href="/member/main">&nbsp;&nbsp;&nbsp;&nbsp;logout</a></p>
               
            </div>
            <nav id="main_gnb">
              <ul>
                <li>
                  <a href="intro.html"><span>소개글</span></a>
                  <ul class="sub">
                    <li><a href="#">비트소개</a></li>
                    <li><a href="#">조직도</a></li>
                    <li><a href="#">찾아오는길</a></li>
                  </ul>
                </li>

                <li>
                  <span>학원시스템</span>
                  <ul class="sub">
                    <li><a href="#">학원안내</a></li>
                    <li><a href="company.html">강의실사용예약</a></li>
                  </ul>
                </li>
                <li>
                  <span>게시판</span>
                  <ul class="sub">
                    <li><a href="../board/list">알림마당</a></li>
                    <li><a href="#">수강생게시판</a></li>
                    <li><a href="#">FAQ</a></li>
                  </ul>
                </li>
                <li>
                  <span>마이페이지</span>
                  <ul class="sub">
                    <li><a href="/member/mypage">개인정보수정</a></li>
                    <li><a href="/member/memberDelete">회원탈퇴</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </header>
</body>
</html>