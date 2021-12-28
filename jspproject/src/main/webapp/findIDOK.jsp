<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<style type="text/css">
body {
  margin: 0;
  padding: 0;
  background-color: #78c2ad;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
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
<title>Insert title here</title>
</head>
<body>
<div id="login">
	<a href="#"><img src="image/home.png"></a>&nbsp;&nbsp;>&nbsp;&nbsp;아이디 찾기
	<div class="container">
	 <div id="login-row" class="row justify-content-center align-items-center">
      	<div id="login-column" class="col-md-6">
        	<div id="login-box" class="col-md-12">
        		<div style="position:absolute;margin-top:100px;margin-left:40px;">
					<p>회원님의 아이디는 <strong>${member_id}</strong>입니다.</p>
				</div>
				<div style="position:absolute;margin-top:200px;margin-left:120px;">
					<button type="button" class="btn btn-primary" onclick="location.href=login.do">로그인</button>
				</div>
			</div>
		</div>
		</div>
		</div>			
	</div>			
</body>
</html>