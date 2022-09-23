<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<select id="teamsId" onchange="selectBoxChange(this.value);" class="form-select">
		<c:forEach var="teams" items="${teams}">
			<option value="${teams.id}">${teams.teamsName}</option>
		</c:forEach>
	</select> 
	<div class="mb-3 mt-3">
		<label for="text" class="form-label">포지션 : </label> 
		<input id ="position" type="text" class="form-control" placeholder="Enter name">
		<label for="text" class="form-label">선수명 : </label> 
		<input id ="playersName" type="text" class="form-control" placeholder="Enter name">
	</div>
	<button id="btnPlayersSave" type="button" class="btn btn-success">등록완료</button>
</div>

<script>
$("#btnPlayersSave").click(()=>{

	let data = {
			playersName: $("#playersName").val(),
			teamsId : $("#teamsId").val(),
			position : $("#position").val()
		};

	$.ajax("/players/save", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/players";
		} else {
		}
	});
});
</script>
<%@ include file="../layout/footer.jsp"%>