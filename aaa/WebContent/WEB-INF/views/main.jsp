<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
   $( ".outputDiv" ).draggable({revert:"invalid"});
   $("#openbar").click(function(){
		$("#mySidenav").css("width","250px")
	})
	$(".closebtn").click(function(){
		$("#mySidenav").css("width","0")
	})
	$(".tableAddBtn").click(function(){
		var str="<div class='tableAll'><div class='tableName'>"+$("#tableNameInput").val();
		str+="<a class='closeTable'>&times;</a></div>"
//		$(".outputDiv").fadeIn(function(){$(".outputDiv").append(str)})
		$(".outputDiv").append(str).fadeIn(2000).fadeOut();
		$(".tableAddBtn").attr('disabled',true);
	})
} );
</script>
<style>
.tableName{border:1px solid; text-align:center; max-width:300px;}
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}
.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}
#top-menu{background:#f1f1f1;}
.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

/*           */
.inputDiv{margin:7px 7px; height:100%;}
.outputDiv{display:none;margin:7px 7px; height:100%;}



</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="top-menu">
<span id="openbar" style="font-size:30px;cursor:pointer">&#9776;</span>
</div>

<div class="row">
	<div class="col-md-3 form-group inputDiv">
	    <label for="exampleInputEmail1">이메일 주소</label>
	    <input type="text" class="form-control" id="tableNameInput" placeholder="테이블 이름을 입력하세요">
	    <br>
	    <button class="btn btn-primary tableAddBtn">추가</button>
  	</div>
  	<div class="col-md-8 outputDiv" id="outputDiv">
  	</div>
</div>





<div id="mySidenav" class="sidenav">
  <a href="#" class="closebtn">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>
</body>
</html>