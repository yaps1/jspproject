<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">

	#title{
		font-size: 32px;
		font-style: bold;
	}

	.card{
		position: relative;
		float: left;
		width: 30%;
		height: 250px;
		margin: 20px;
		border: 1px solid #ofofof33;
		text-align: center;
	}
	#paging{
		padding-top: 100px;
		padding-left: 45%;
	}
#paging{
	clear: both;
}
#container {
	margin: auto;
	width: 80%;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function pro(){
		var search = $("#search").val();
		location.href='searchTour.do?search='+search;
		
	}
</script>
</head>
<body>
<jsp:include page="menu.jsp"/>
<hr>
<div id="container">
	<img src="image/tour.png" width="100%" >
	<hr>

	<ol class="breadcrumb">
	  <li class="breadcrumb-item"><a href="main.do"><img src="image/home.png"></a></li>
	  <li class="breadcrumb-item active">관광배프</li>
	</ol>
	

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="tour.do">관광배프</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor03">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
        </li>
        <li class="nav-item">
          <a class="nav-link" href="tourFavor.do">인기순</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="tourName.do">이름순</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">영업일</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="tourHoliday.do?holiday=월">월요일</a>
            <a class="dropdown-item" href="tourHoliday.do?holiday=화">화요일</a>
            <a class="dropdown-item" href="tourHoliday.do?holiday=수">수요일</a>
            <a class="dropdown-item" href="tourHoliday.do?holiday=목">목요일</a>
            <a class="dropdown-item" href="tourHoliday.do?holiday=금">금요일</a>
            <a class="dropdown-item" href="tourHoliday.do?holiday=토">토요일</a>
            <a class="dropdown-item" href="tourHoliday.do?holiday=일">일요일</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">지역순</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="tourLoc.do?loc=서울">서울</a>
            <a class="dropdown-item" href="tourLoc.do?loc=부산">부산</a>
            <a class="dropdown-item" href="tourLoc.do?loc=대구">대구</a>
            <a class="dropdown-item" href="tourLoc.do?loc=인천">인천</a>
            <a class="dropdown-item" href="tourLoc.do?loc=광주">광주</a>
            <a class="dropdown-item" href="tourLoc.do?loc=대전">대전</a>
            <a class="dropdown-item" href="tourLoc.do?loc=울산">울산</a>
            <a class="dropdown-item" href="tourLoc.do?loc=강원">강원</a>
            <a class="dropdown-item" href="tourLoc.do?loc=경기">경기</a>
            <a class="dropdown-item" href="tourLoc.do?loc=경남">경남</a>
            <a class="dropdown-item" href="tourLoc.do?loc=경북">경북</a>
            <a class="dropdown-item" href="tourLoc.do?loc=전남">전남</a>
            <a class="dropdown-item" href="tourLoc.do?loc=전북">전북</a>
            <a class="dropdown-item" href="tourLoc.do?loc=제주">제주</a>
            <a class="dropdown-item" href="tourLoc.do?loc=충남">충남</a>
            <a class="dropdown-item" href="tourLoc.do?loc=충북">충북</a>
          </div>
        </li>
      </ul>
		<div class="input-group mb-3" style="width:20%;  float:right; position: relative;">
			      <input type="text" class="form-control" name="search" id="search">
			      <button class="btn btn-primary" type="submit" id="button-addon2" onclick="pro();">검색</button>
		</div>
    </div>
  </div>
</nav>

	<br>
	<c:forEach var="t" items="${tourList }">

			<a href="tourDetail.do?no=${t.bp_no }">
			<div class="card mb-3" >
			  <h3 class="card-header">${t.bp_name }</h3>
					
			  <svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="30%" height="250" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
			    <rect width="100%" height="100%" fill="#868e96"></rect>
			    <img src="upload/${t.image }" style="width: 100%; height: 250px;">
			  </svg>
			</div>
			</a>
		</c:forEach>
	<br>
	<br>
	<br>
	
	
	<div id="paging" >
			<c:forEach var="i" begin="1" end="${totalPage }">
				<a href="tour.do?pageNUM=${i }">${i }</a>&nbsp;&nbsp;
			</c:forEach>
	</div>		
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>