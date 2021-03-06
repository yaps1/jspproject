<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"> 
<style type="text/css">
.container {
  background-color : #EAEAEA;
}
.form-check .form-check-input {
  float: left;
  margin-left: -1.5em;
}

.form-check-input {
  width: 1em;
  height: 1em;
  margin-top: 0.25em;
  vertical-align: top;
  background-color: #fff;
  background-repeat: no-repeat;
  background-position: center;
  background-size: contain;
  border: 1px solid rgba(0, 0, 0, 0.25);
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  -webkit-print-color-adjust: exact;
  color-adjust: exact;
}
.container {
	width: 50%;
}

.btn-primary {
  color: #fff;
  background-color: #78c2ad;
  border-color: #78c2ad;
}

.btn-primary:hover {
  color: #fff;
  background-color: #66a593;
  border-color: #609b8a;
}
.btn-check:focus + .btn-primary, .btn-primary:focus {
  color: #fff;
  background-color: #66a593;
  border-color: #609b8a;
  box-shadow: 0 0 0 0.25rem rgba(140, 203, 185, 0.5);
} 
.btn-secondary {
  color: #fff;
  background-color: #f3969a;
  border-color: #f3969a;
}

.btn-secondary:hover {
  color: #fff;
  background-color: #cf8083;
  border-color: #c2787b;
}

.btn-check:focus + .btn-secondary, .btn-secondary:focus {
  color: #fff;
  background-color: #cf8083;
  border-color: #c2787b;
  box-shadow: 0 0 0 0.25rem rgba(245, 166, 169, 0.5);
}
.text-secondary {
  color: #f3969a;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
//생년월일 selectbox 함수
$(document).ready(function(){ 
	var now = new Date(); 
	var year = now.getFullYear(); 
	var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
	var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate()); 
	for(var i = 1900 ; i <= year ; i++) { //년도 selectbox만들기 
		$('#year').append('<option value="' + i + '">' + i + '</option>'); }  
	for(var i=1; i <= 12; i++) { //월별 selectbox 만들기
		var mm = i > 9 ? i : "0"+i ; 
		$('#month').append('<option value="' + mm + '">' + mm + '</option>'); } 
	for(var i=1; i <= 31; i++) { 	// 일별 selectbox 만들기 
		var dd = i > 9 ? i : "0"+i ; 
		$('#day').append('<option value="' + dd + '">' + dd+ '</option>'); } 
	$("#year > option[value="+year+"]").attr("selected", "true"); 
	$("#month > option[value="+mon+"]").attr("selected", "true"); 
	$("#day > option[value="+day+"]").attr("selected", "true"); })
	
//아이디 중복확인 함수
function idCheck(){
	//새창 만들기
	window.open("idCheckForm.jsp", "idwin", "width=600, height=350");
}

function validation(){
    var RegExp = /^[a-zA-Z0-9]{5,12}$/; //id와 pwassword 유효성 검사 정규식
    var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //이메일 유효성검사
    var n_RegExp = /^[가-힣]{2,15}$/; //이름 유효성검사 정규식
    
    var objId = document.getElementById("member_id");     //아이디
    var objPwd = document.getElementById("member_pwd");   //비밀번호
    var objPwd2 = document.getElementById("pwdcheck");    //비밀번호확인
    var objName = document.getElementById("member_name"); //이름
    var objTel1 = document.getElementById("tel1");		  //전화번호
    var objTel2 = document.getElementById("tel2");
    var objTel3 = document.getElementById("tel3");
    var objEmail = document.getElementById("email");	  //이메일
    
    // =============== 필수입력사항 입력여부 검사 ================== //
    
    if(objId.value==''){
        alert("아이디를 입력해주세요.");
        return false;
    }
    if(objPwd.value==''){
        alert("비밀번호를 입력해주세요.");
        return false;
    }
    if(objPwd2.value==''){
    	alert("비밀번호 확인을 입력해주세요");
    	return false;
    }
    if(objName.value ==''){
        alert("이름을 입력해주세요.");
        return false;
    }
    if(objTel1.value =='' || objTel2.value =='' || objTel3.value =='' ){
    	alert("전화번호를 입력해주세요.");
    	return false;
    }
 
    // ================ PASSWORD 유효성검사 ===============//
    
    if(!RegExp.test(objPwd.value)){ //패스워드 유효성검사
        alert("비밀번호는 5~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
        return false;
    }
    if(objPwd2.value!=objPwd.value){ //비밀번호와 비밀번호확인이 동일한지 검사
        alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        return false;
    }
    
    // ================ email 유효성검사 ================ //
    
    if(!e_RegExp.test(objEmail.value)){ //이메일 유효성 검사
        alert("올바른 이메일 형식이 아닙니다.");
        return false;
    }
    
    // ================ 이름 유효성검사 ================ //        
   
    if(!n_RegExp.test(objName.value)){
        alert("특수문자,영어,숫자는 사용할수 없습니다. 한글만 입력하여주세요.");
        return false;
    }
     
}
</script>	
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<ol class="breadcrumb">
	  <li class="breadcrumb-item"><a href="main.do"><img src="image/home.png"></a></li>
	  <li class="breadcrumb-item active">회원가입</li>
	</ol>
<hr>
<div class="container" style="height:700px;">
	<h2 class="text-center">회원수정</h2>
	<div class="col-lg-12 well" style="width: 60%;margin: auto;">
	<div class="row">
		<p class="text-secondary"><b>&nbsp;&nbsp;&nbsp;*은 필수입력 사항입니다.</b></p>
		<form action="updateMemberOK.do" id="login" name="regForm" method="post" onsubmit="return validation();">
		<div class="col-sm-12">
			<div class="row">
			<div class="form-group">
			<div class="col-sm-6 form-group">
				<label>*이름</label>
				<input type="text" name="member_name" id="member_name" class="form-control" value="${m.member_name }" readonly>
			</div>
			<div class="col-sm-6 form-group">
				<label>생년월일</label><br>
				<input type="text" name="birth" id="birth" class="form-control" value="${m.birth }" readonly>
			</div>
			<div class="col-sm-6 form-group">
				<label>성별</label>
				<input type="text" name="gender" id="gender" class="form-control" value="${m.gender }" readonly>
			</div>
			<div class="col-sm-6 form-group">
				<label>*전화번호</label><br>
				<input type="text" name="tel" id="tel" class="form-control" value="${m.member_tel }" readonly>
				
			</div>
			<div class="form-group" style="margin-left:15px;margin-right:10px;">
				<label>주소</label>
				<input type="text" name="addr" id="addr" class="form-control" style="width:500px;" value="${m.addr }">
			</div>
			<div class="col-sm-6 form-group">
				<label>이메일</label>
				<input type="text" name="email" id="email" class="form-control" value="${m.email }">
			</div>
			<div class="col-sm-6 form-group">
				<label>취미</label>
				<input type="text" name="hobby" id="hobby" class="form-control" value="${m.hobby }">
			</div>
			<div class="btn-block" style="position:absolute;top:550px;left:600px;">
				<input type="reset" value="취소" class="btn btn-secondary">
				<input type="submit" value="수정" class="btn btn-primary">
			</div>
	</div>
	</div>
</form>
</div>
</div>
</div>
<br>
	<!--<jsp:include page="footer.jsp"/> -->
</body>
</html>