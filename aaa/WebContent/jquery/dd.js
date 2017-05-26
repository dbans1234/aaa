<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
   $( "#outputDiv" ).draggable();
   $("#openbar").click(function(){
		$("#mySidenav").css("width","250px")
	})
	$(".closebtn").click(function(){
		$("#mySidenav").css("width","0")
	})
	$(".tableAddBtn").click(function(){
		var str="<div class='tableAll'><div class='tableName'>"+$("#tableNameInput").val();
		str+="<a class='closeTable'>&times;</a></div>"
		$(".outputDiv").append(str)
		$(".tableAddBtn").attr('disabled',true);
	})
} );
</script>