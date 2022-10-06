<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../resources/assets/css/noscript.css" />
</noscript>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="../resources/jQuery/masonry.pkgd.min.js"></script>
<script src="../resources/jQuery/jquery-3.6.1.min.js"></script>
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>







	<script>
$(document).ready(function(){
   console.log("=============");
   console.log("JS TEST");
   var reservenoValue = '<c:out value="${reserve.reserveno}"/>';
   var replyUL = $(".chat");
   showList(1);
   /*{reply:"JS TEST", replyer:"tester",bno:bnoValue}
   ,
   function(result){
      alert("RESULT : " + result);
   });*/
   //for replyService add test
   /*replyService.add(
         {reply:"JS TEST", replyer:"tester",bno:bnoValue}
         ,
         function(result){
            alert("RESULT : " + result);
         });*/
   /*replyService.getList({bno:bnoValue, page:1}, function(list){
      for(var i=0, len=list.length||0; i<len;i++){
         console.log(list[i]);
      }
   });*/
   
   /*replyService.remove(30, function(count) {
        console.log(count);
        
        if(count === "success") {
           alert("REMOVED");
        }
     }, function(err) {
        alert("ERROR");
     });*/
   
   /*replyService.update({
      rno : 11, bno : bnoValue, reply : " 수정된 댓글"
   }, function(result) {
      alert("수정 완료...!!!");
   });
     
    replyService.get(11, function(data) {
       console.log(data);
   })*/
   

   
   function showList(page){
	   replyService.getList({reserveno:reservenoValue,page:page||1},function(list){
		   var str="";
		   if(list == null || list.length == 0){
			   replyUL.html("");
			   return;
		   }
		   for(var i=0, len=list.length || 0; i< len; i++) {
			   str +="<li class= 'left clearfix' data-rno='"+list[i].rno+"'>";
			   str +="	<div><div class='header'><strong class='primary-font'>"+list[i].replyer+"</strong>";
			   str +="	<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replyDate)+"</small></div>";
			   str +="	<p>"+list[i].reply+"</p></div></li>";
		   }
		   replyUL.html(str);
	   }); //end function
   }//end showList 
   
   var modal = $(".modal");
   var modalInputReply=modal.find("input[name='reply']");
   var modalInputReplyer=modal.find("input[name='replyer']");
   var modalInputReplyDate=modal.find("input[name='replyDate']");
   
   var modalModBtn=$("#modalModBtn");
   var modalRemoveBtn=$("#modalRemoveBtn");
   var modalRegisterBtn=$("#modalRegisterBtn");
   
   $("#addReplyBtn").on("click",function(e){
	   modal.find("input").val("");
	   modalInputReplyDate.closest("div").hide();
	   modal.find("button[id !='modalCloseBtn']").hide();
	   
	   modalRegisterBtn.show();
	   
	   $(".modal").modal("show");
   });
   modalRegisterBtn.on("click",function(e){
		var reply={
				reply: modalInputReply.val(),
				replyer:modalInputReplyer.val(),
				reserveno:reservenoValue
		};
		replyService.add(reply, function(result){
			alert(result); //댓글 등록이 정상임을 팝업으로 알림
			
			modal.find("input").val(""); //댓글 등록이 정상적으로 이루어지면, 내용을 지움
			modal.modal("hide");//모달창 닫음
			
			showList(1);
		});
	   
   });
   $(".chat").on("click", "li", function(e){
	   var rno=$(this).data("rno");
	   replyService.get(rno, function(reply){
		   modalInputReply.val(reply.reply);
		   modalInputReplyer.val(reply.replyer).attr("readonly","readonly");
		   modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
		   modal.data("rno",reply.rno);
		   
		   modal.find("button[id != 'modalCloseBtn']").hide();
		   modalModBtn.show();
		   modalRemoveBtn.show();
		   
		   $(".modal").modal("show");
	   });
	   
	   
	   console.log(rno);
   });
   modalModBtn.on("click",function(e){
	   var reply={rno:modal.data("rno"), reply: modalInputReply.val()};
	   replyService.update(reply,function(result){
		   alert(result);
	   	   modal.modal("hide");
	   	   showList(1);
	   });
   });
	   
modalRemoveBtn.on("click",function(e){
	var rno=modal.data("rno");
	replyService.remove(rno,function(result){
		alert(result);
		modal.modal("hide");
		showList(1);
	});
});
   
   console.log(replyService);
         
   var login_userPwd = ${login.userPwd};
   var operForm = $("#operForm");
   $("button[data-oper='modify']").on("click",function(e){
	   	var pwCheck = $("#check_pw").val();
	   	
	   	console.log('login_userPwd:',login_userPwd);
	   	console.log('pwCheck:',pwCheck);
	   	
		   if(login_userPwd == pwCheck){
			      operForm.attr("action","/reservation/modify#two").submit();
				   }   
	   
	   
   });
   
   $("button[data-oper='list']").on("click",function(e){
      
      operForm.find("#reserveno").remove();
      operForm.attr("action","/reservation/list#two")
      operForm.submit();
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
				<h2>예약 신청 내역</h2>
				<p> </p>
				<div class="features">

					<div class="panel-heading"></div>


					<div class="panel-body">

						<div class="form-group">
							<label>강의실</label> <input class="form-control" name='reserveno'
								value='<c:out value="${reserve.classroom}" />' style="color: black;"
								readonly="readonly">
						</div>
						<br>

						<div class="form-group">
							<label>예약 날짜</label><input class="form-control" name='classroom'
								value='<c:out value="${reserve.reservedate}"/>' style="color: black;"
								readonly="readonly">
						</div>
						<br>
						<div class="form-group">
							<label>예약 시간</label><input class="form-control" name='reservetime'
								value='<c:out value="${reserve.reservetime}"/>' style="color: black;"
								readonly="readonly">
						</div>
						<br>

						<div class="form-group">
							<label>작성자</label><input class="form-control" name='writer'
								value='<c:out value="${reserve.writer}"/>' style="color: black;"
								readonly="readonly">
						</div>
						<br>
						
						<!-- 관리자(admin)가 아니면 modify버튼이 보이지 않음 -->
						
							<c:if test="${(login.userId == 'admin') || ( reserve.writer==login.userName) }">
							
							
							<span>비밀번호 확인 입력</span>
							<input type='password' id="check_pw" name="check_pw" value="" >
							<button data-oper='modify' class="btn btn-default">수정</button>
						</c:if>
						
						
						<button data-oper='list' class="btn btn-info">예약리스트</button>

						<form id='operForm' action="/reservation/modify#two" method="get">
							<input type='hidden' id='reserveno' name='reserveno'
								value='<c:out value="${reserve.reserveno }"/>'>
						</form>
						
					</div>
					
					<c:if test="${reserve.classroom =='ROOM1'}">
					<img style="margin-left:230px" src="../resources/css/images/person4.png">
					</c:if>
					<c:if test="${reserve.classroom =='ROOM2'}">
					<img style="margin-left:230px" src="../resources/css/images/person6.png">
					</c:if>
					<c:if test="${reserve.classroom =='ROOM3'}">
					<img style="margin-left:230px" src="../resources/css/images/person10.png">
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


	<!-- /#wrapper -->




</body>
</html>