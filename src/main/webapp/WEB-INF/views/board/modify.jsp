
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>BIT COMPUTER ACADEMY</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../resources/assets/css/main.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="../resources/jQuery/masonry.pkgd.min.js"></script>
<script src="../resources/jQuery/jquery-3.6.1.min.js"></script>
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>





</head>

<body>
	<script type="text/javascript">
   $(document).ready(function(){
      var formObj=$("form");
      
      $('button').on("click",function(e){
         e.preventDefault();
         var operation=$(this).data("oper");
         console.log(operation);
         
         if(operation === 'remove'){
            formObj.attr("action", "/board/remove");
         }else if (operation === 'list'){
            //move to list
            formObj.attr("action","/board/list#two").attr("method","get");
            formObj.empty();
            
         }
         formObj.submit();
      });
   });
   </script>

	<!-- Sidebar -->
	<section id="sidebar">
		<div class="inner">
			<nav>
				<ul>
					<p style="margin-top: 25px">${login.userName}님,
						환영합니다.<a href="/member/main">&nbsp;&nbsp;&nbsp;&nbsp;logout</a>
					</p>
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



		<!-- One -->


		<!-- Two -->
		<section id="two" class="wrapper style3 fade-up">
			<div class="inner">
				<h2>게시글 수정하기</h2>
				<p> </p>
				<div class="features">

					<div class="panel-heading"></div>


					<!-- /.panel-heading -->
					<div class="panel-body">

						<form role="form" action="/board/modify" method="post">
							<div class="form-group">
								<label>번호</label><input class="form-control" name='bno'
									value='<c:out value="${board.bno}"/>' readonly="readonly"
									placeholder="Bno" style="color: black;">
							</div>

							<div class="form-group">
								<label>제목</label><input class="form-control" name='title'
									value='<c:out value="${board.title}"/>' placeholder="테스트 제목"
									style="color: black;">
							</div>

							<div class="form-group">
								<label>내용</label>
								<textarea class="form-control" rows="5" cols="50" name='content'
									placeholder="테스트 내용" style="color: black;"><c:out
										value="${board.content}" /></textarea>
							</div>

							<div class="form-group">
								<label>작성자</label><input class="form-control" name='writer'
									value='<c:out value="${board.writer}"/>' readonly="readonly"
									placeholder="User" style="color: black;">
							</div>

							<div class="form-group">
								<label>작성일</label><input class="form-control" name='regDate'
									value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.regdate }"/>'
									readonly="readonly" style="color: black;">
							</div>

							<div class="form-group">
								<label>수정일</label><input class="form-control"
									name='updateDate'
									value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${board.updateDate}"/>'
									readonly="readonly" style="color: black;">
							</div>
							<script>
							//modify 버튼 remove버튼 클릭시 알림내용 표시
							function modifyButtonClick(){
						    	   alert("글이 수정되었습니다.");
						       }
							function removeButtonClick(){
						    	   alert("글이 삭제되었습니다.");
						       }
							</script>
							<button type="submit" data-oper='modify' class="btn btn-default" onclick="modifyButtonClick()">수정</button>
							<button type="submit" data-oper='remove' class="btn btn-danger" onclick="removeButtonClick()">삭제</button>
							<button type="submit" data-oper='list' class="btn btn-info">목록</button>
						</form>
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
	<script src="../resources/jQuery/jquery-3.6.1.min.js"></script>
	<script src="../resources/jQuery/masonry.pkgd.min.js"></script>

	<!-- /#wrapper -->




</body>
</html>