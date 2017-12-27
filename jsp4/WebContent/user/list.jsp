<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>
<body>
<script>
function afterLogin(result){
	var ths = $("table[id='table'] thead tr th");
	var trStr ="";
	for(var i=0;i<result.length;i++){
		trStr +="<tr data-view='" + result[i].userNo + "'>";
		for(var j=0;j<ths.length;j++){
			var th = ths[j].getAttribute("data-field");
			trStr += "<td class='text-center' >" + result[i][th] + "</td>";
		}
		trStr +="</tr>";
	}
	$("#result_tbody").html(trStr);
	$("tr[data-view]").click(function(){
		var userNo = this.getAttribute("data-view");
		location.href="./view.jsp?userno=" + userNo;
	})
}
$(document).ready(function(){
	var url = "join.user";
	var param = {};
	param["cmd"] = "list";
	$.ajax({
		type : "post",
		url : url,
		dataType: "json",
		data : param,
		success : afterLogin,
		error : function(xhr,status){
			alert("에러 : " + xhr.responseText);
		}
	});
})
</script>
<div class="container">
	<table id="table" data-height="460"
	class="table table-bordered table-hover">
		<thead>
			<tr> 
				<th class="text-center" data-field="userNo">No</th>
				<th class="text-center" data-field="userId">ID</th>
				<th class="text-center" data-field="userAge">Age</th>
				<th class="text-center" data-field="userName">Name</th>
				<th class="text-center" data-field="userAddress">Address</th>
			</tr>
		</thead>
		<tbody id="result_tbody">
		</tbody>
	</table>
</div>
</body>
</html>