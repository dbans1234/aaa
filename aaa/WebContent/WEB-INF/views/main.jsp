<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/tt.css" />
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
   $( ".outDataDiv" ).draggable({revert:"invalid"});
   $( ".panel" ).droppable({
	      drop: function( event, ui ) {
	    	  var s=$(".outDataDiv").html();
	    	 	$(this).append($(".outDataDiv").html());
	    	 	$(".outputDiv").empty(); $(".tableAddBtn").removeAttr('disabled');
	    	 	$(".outputDiv").html("<div class='outDataDiv'></div>"); $(".outputDiv").css("display","none")
	    	 	$(this).find("a").removeClass("closeTable").addClass("closeData")
		}});
   $("#openbar").click(function(){
		$("#mySidenav").css("width","250px")
	})
	$(".closebtn").click(function(){
		$("#mySidenav").css("width","0")
	})
} );
// 닫기 버튼
$(document).on("click",".closeTable",function(){
	$(".outputDiv").fadeOut(function(){	$(".outDataDiv").empty();}); $(".tableAddBtn").removeAttr('disabled')
})
// 데이터 닫기 버튼
$(document).on("click",".closeData",function(){
	$(this).parent().parent().fadeOut(function(){$(this).remove();}); $(".tableAddBtn").removeAttr('disabled')
})
// 추가 버튼
$(document).on("click",".tableAddBtn",function(){
	var str="<div class='tableAll'><div class='tableName'>"+$("#tableNameInput").val();
	str+="<a class='closeTable'>&times;</a></div>"
//	$(".outputDiv").fadeIn(function(){$(".outputDiv").append(str)})
	$(".outDataDiv").append(str);     $(".outputDiv").fadeIn()
	$(".tableAddBtn").attr('disabled',true);
	 $( ".outDataDiv" ).draggable({revert:"invalid"});
}) 
</script>
<style>
.outDataDiv{border:1px solid; text-align:center; max-width:300px;}
button.accordion {background-color: #eee;color: #444;cursor: pointer; padding: 18px; width: 100%; border: none; text-align: left; outline: none;font-size: 15px; transition: 0.4s;}
button.accordion.active, button.accordion:hover {background-color: #ddd;}
div.panel {padding: 0 18px; background-color: white; max-height: 0;overflow: hidden;transition: max-height 0.2s ease-out; min-height:20px;}

.deptDiv{float:right;}
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
.outputDiv{display:none;margin:7px 7px; height:100%; z-index:99;}


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
  	
  	<div class="col-md-5 outputDiv" id="outputDiv">
  		<div class="outDataDiv"></div>
  	</div>
  	
  	<div class="col-md-4 deptDiv">
  		<button class="accordion">Section 1</button>
		<div class="panel">
		</div>
		
		<button class="accordion">Section 2</button>
		<div class="panel">
		 	이
		</div>
		
		<button class="accordion">Section 3</button>
		<div class="panel">
		  	스
		</div>
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

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].onclick = function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  }
}
</script>



/* 	$(".tableAddBtn").click(function(){
		var str="<div class='tableAll'><div class='tableName'>"+$("#tableNameInput").val();
		str+="<a class='closeTable'>&times;</a></div>"
//		$(".outputDiv").fadeIn(function(){$(".outputDiv").append(str)})
		$(".outDataDiv").append(str);$(".outputDiv").fadeIn()
		$(".tableAddBtn").attr('disabled',true);
	}) */