<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<br>
	<br>
	<ol class="breadcrumb">
	  <li class="breadcrumb-item"><a href="main.do"><img src="image/home.png"></a></li>
	  <li class="breadcrumb-item"><a href="notice.do">공지사항</a></li>
	  <li class="breadcrumb-item active">공지사항 수정</li>
	</ol>
	
	<form action="updateNoticeOK.do" method="post" id="f" style="width: 60rem; margin: auto;">
		<input type="hidden" name="notice_no" value="${n.notice_no }">
		<div class="form-group">
	      <label for="exampleTextarea" class="form-label mt-4">제목</label>
	      <textarea class="form-control" id="notice_title" rows="3" name="notice_title"  maxlength="30">${n.notice_title }</textarea><br>
	      <label for="exampleTextarea" class="form-label mt-4">내용</label>
	      <textarea class="form-control" id="notice_content" rows="10"name="notice_content"  maxlength="1000">${n.notice_content }</textarea><br>
	    	<div style="width: 10rem;margin: auto;">
		    	<button type="submit" class="btn btn-primary">수정</button>
		    	<button type="submit" class="btn btn-primary" onclick="location.href='notice.do'">취소</button>
		    </div>
	    </div>
    </form>

	<jsp:include page="footer.jsp"/>

</body>
</html>