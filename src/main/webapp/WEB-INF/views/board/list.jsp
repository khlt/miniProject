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
							<!-- login.userName이 비었을 경우 -->
							<c:if test="${empty login.userName}">
								<li><a href="../member/login">LOGIN</a></li>
							</c:if>
							
							<!-- login.userName이 null이 아닐경우 -->
							<c:if test="${login.userName != null }">
								<p style="margin-top:25px">${login.userName}님, 환영합니다.<a href="/member/logout">&nbsp;&nbsp;&nbsp;&nbsp;logout</a></p>
							</c:if>
							
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
							<h2>Board</h2>
							<p></p>
							<div class="features">

								<div class="panel-heading">
								
								</div>

								<div class="panel-body">
									<table width="100%" class="table table-striped table-bordered table-hover" >
										<thead>
										   <tr>
											<th>번호</th>
									
                                 		   <th>제목</th>
                                 		   <th>작성자</th>
                                 		   <th>작성일</th>
                                 	  		 <th>수정일</th>
											</tr>
										</thead>
										<c:forEach items="${list}" var="board">
										<tr>
										<td><c:out value="${board.bno}"/></td>
										<td><a href='/board/get?bno=<c:out value="${board.bno }#two"/>'>                       
										<c:out value="${board.title}"/></a></td>
										<td><c:out value="${board.writer}"/></td>
										<!-- 위치 수정 -->
										<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.updateDate}"/></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.regdate}"/></td>
										</tr>
										</c:forEach>
									</table>
									
									<!-- /.table-responsive -->
									
								</div>

								
							</div>
							<ul class="actions">
								
							</ul>
							
							<!-- login.userId가 admin일 경우 글쓰기버튼이 표시 -->
							<c:if test="${login.userId != null }">
							<button id='regBtn' type="button" class="btn btn-xs pull-right">글쓰기</button>	
						</c:if>
						
						
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
			<script src="../resources/jQuery/jquery-3.6.1.min.js"></script>
    		<script src="../resources/jQuery/masonry.pkgd.min.js"></script>
			
			
<!-- Bootstrap Core JavaScript -->
    <script type="text/javascript">
    $(document).ready(function(){
       var result = '<c:out value="${result}"/>';
       console.log('result',result);
    });
    </script>
    
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
    aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"
    aria-hidden="true">&times;</button>
    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
    </div>
    <div class="modal-body">처리가 완료되었습니다.</div>
    <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
    </div>    
    </div>
    <!--  /.modal-content -->
    </div>
    <!--  /.modal-dialog -->
    </div>
    <!--  /.modal -->
    
    <script type="text/javascript">
    $(document).ready(function(){
       var result = '<c:out value="${result}"/>';
       checkModal(result);
       function checkModal(result){
          if(result === ""){
             return;
          }
          if(parseInt(result) > 0){
             $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록됨.");
          }
          $("#myModal").modal("show");
       }
       $("#regBtn").on("click", function(){
          self.location = "/board/register2#two";
       });
       console.log('result',result);
    });
    </script>
	</body>
</html>