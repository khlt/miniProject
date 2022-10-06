<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>BIT COMPUTER ACADEMY</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../resources/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<c:if test="${empty login.userName}">
								<li><a href="./login">LOGIN</a></li>
							</c:if>
							<c:if test="${login.userName != null }">
								<p style="margin-top:25px">${login.userName}님, 환영합니다.<a href="/member/logout">&nbsp;&nbsp;&nbsp;&nbsp;logout</a></p>
							</c:if>
							<li id="login"><a href="/member/main"><img src="../resources/css/images/members-640.png"></a></li>
							<li><a href="/member/main#one">Room</a></li>
							<li><a href="./login">Reservation</a></li>
							<li><a href="../board/list#two">Board</a></li>
							<li><a href="./login">Mypage</a></li>
							<li><a href="./register">Join</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
               <section id="intro" class="wrapper style1 fullscreen fade-up">
                  <div class="inner">
                     <h1>BIT SPACE</h1>
                     <p>성공적인 미래를 준비하는 모임 공간 <br />
                     The Meeting Room to Prepare for a Successful Future
                      </p>
                     <ul class="actions">
                        <li><a href="#one" class="button scrolly">Learn more</a></li>
                     </ul>
                  </div>
               </section>

            <!-- One -->
               <section id="one" class="wrapper style2 spotlights">
                  <section>
                     <img src="/resources/css/images/person4.png" alt="" data-position="center center" style="width:600px; height:auto;"  />
                     <div class="content">
                        <div class="inner">
                           <h2>ROOM 1</h2>
                           <p> - 수용 인원 : 최대 4인<br>
                           - 비용 : 10000원/회차<br>
                           - 부가 서비스 : 화이트 보드, 에어컨, 난방기, 유선인터넷 사용 가능.</p>
                           <ul class="actions">
                              <li><a href="/member/login" class="button">Reservation</a></li>
                           </ul>
                        </div>
                     </div>
                  </section>
                  <section>
                     <img src="/resources/css/images/person6.png" alt="" data-position="top center" style="width:600px; height:auto;" />
                     <div class="content">
                        <div class="inner">
                           <h2>ROOM 2</h2>
                           <p>- 수용 인원 : 최대 6인<br>
                           - 비용 : 12000원/회차<br>
                           - 부가 서비스 : 화이트 보드, 에어컨, 난방기, 유선인터넷 사용 가능.</p>
                           <ul class="actions">
                              <li><a href="/member/login" class="button">Reservation</a></li>
                           </ul>
                        </div>
                     </div>
                  </section>
                  <section>
                     <img src="/resources/css/images/person10.png" alt="" data-position="25% 25%" style="width:600px; height:auto;" />
                     <div class="content">
                        <div class="inner">
                           <h2>ROOM 3</h2>
                           <p>- 수용 인원 : 최대 10인<br>
                           - 비용 : 15000원/회차<br>
                           - 부가 서비스 : 화이트 보드, 에어컨, 난방기, 유선인터넷 사용 가능.</p>
                           <ul class="actions">
                              <li><a href="/member/login" class="button">Reservation</a></li>
                           </ul>
                        </div>
                     </div>
                  </section>
               </section>
					

				

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li>BIT SPACE</li>
						<li>서울특별시 서초구 서초대로74길33 비트빌</li>
						<li>&copy; Untitled. All rights reserved.</li>
						<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="../resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="../resources/assets/js/browser.min.js"></script>
			<script src="../resources/assets/js/breakpoints.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<script src="../resources/assets/js/main.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
       var result = '<c:out value="${result}"/>';
       console.log('result',result);
    });
    </script>
	</body>
</html>