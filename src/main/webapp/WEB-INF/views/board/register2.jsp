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
							<p style="margin-top:25px">${login.userName}님, 환영합니다.<a href="/member/main">&nbsp;&nbsp;&nbsp;&nbsp;logout</a></p>
							<li id="login"><a href="/member/main2"><img src="../resources/css/images/members-640.png"></a></li>
					<li><a href="/member/main2#one">Room</a></li>
					<li><a href="../reservation/list#two">Reservation</a></li>
					<li><a href="../board/list#two">Board</a></li>
					<li><a href="/member/mypage">Mypage</a></li>
					<li><a href="../member/register">Join</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					

				<!-- One -->
					

				<!-- Two -->
					<section id="two" class="wrapper style3 fade-up">
						<div class="inner">
							<h2>게시글 작성하기</h2>
							<p> </p>
							<div class="features">

								<div class="panel-heading">
                           
                        </div><br>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <form role="form" action="/board/register2" method="post">
                            <div class="form-group">
                            <label>제목</label><input class="form-control" name='title'  style="color:black;">
                            </div>
                            <div class="form-group">
                            <label>내용</label>
                            <textarea class="form-control" rows="3" name='content' placeholder="글을 입력해 주세요." style="color:black;"></textarea>
                            </div>
                            <div class="form-group">
                            <label>작성자</label><input class="form-control" name='writer' placeholder="user" style="color:black;" value="${login.userName}" readonly>
                            </div>
                            
                            <script>
                            //글쓰기 버튼클릭시 안내문
                            function writing(){
                         	   alert("글이 등록되었습니다.");
                            }
                            </script>
                            <button type="submit" class="btn btn-default" onclick="writing()">등록</button>
                            <button type="reset" class="btn btn-default">초기화</button>
                            </form>                                                                        
                            </div>

								
							</div>
							
						</div>
					</section>

				<!-- Three -->
					
			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
					<li>BIT SPACE</li>
						<li>서울특별시 서초구 서초대로74길33 비트빌</li>
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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