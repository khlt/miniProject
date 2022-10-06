<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/footerCss.css" rel="stylesheet" />

    <script src="../resources/jQuery/jquery-3.6.1.min.js"></script>
    <script src="../resources/jQuery/masonry.pkgd.min.js"></script>
</head>
<body>
  <!--footer-->
      <div id="footWrap">
        <div class="section">
          <div class="siteLink" style="z-index: 30">
            <!-- <img src="./images/26753MP8MJ_1.jpg" width="100px" height="100px"> -->
            <label
              style="margin-left: 200px"
              for="select1"
              class="blind"
            ></label>
            <select id="select1">
              <option value="">타회의실 사이트 바로가기</option>
              <option value="">스페이스 클라우드</option>
            </select>
            <a
              href="https://www.spacecloud.kr/"
              class="btn"
              id="goto-btn"
              title="이동"
              onclick="return goto_btn(this);"
              >이동</a
            >
          </div>
          
          <div class="address">
            <dl>
              <dt>주소 :</dt>
              <dd style="margin-left: 200px">
                서울특별시 서초구 서초대로74길 33 (비트빌)
              </dd>
            </dl>
            <dl>
              <dt>고객센터 :&nbsp;&nbsp;</dt>
              <dd>
                02-2022-2022(내선 20번) ( 이용시간: 평일 오전 9시~ 오후 6시 /
                점심시간: 12시~ 13시 제외)
              </dd>
            </dl>
            <span style="margin-left: 200px"
              >Copyright 2022. BITCOMPUTER. All rights reserved.</span
            >
          </div>
        </div>
      </div>
      <!--footer-->
</body>
</html>