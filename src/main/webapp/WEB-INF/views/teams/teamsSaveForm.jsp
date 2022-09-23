<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<h3>Stadium name :</h3>
	<select id="stadiumsId" onchange="selectBoxChange(this.value);" class="form-select">
		<c:forEach var="stadiums" items="${stadiums}">
			<option value="${stadiums.id}">${stadiums.stadiumsName}</option>
		</c:forEach>
	</select>
	<form>
		<div class="container mt-3">
			<div class="mb-3 mt-3">
				<h3>Team name :</h3>
				<input id="teamsName" type="text" class="form-control" placeholder="Enter name">
			</div>
			<button id="btnTeamsSave" type="button" class="btn btn-success">등록완료</button>
		</div>
	</form>
</div>

<script>
$("#btnTeamsSave").click(()=>{

	let data = {
			teamsName: $("#teamsName").val(),
			stadiumsId: $("#stadiumsId").val()
		};

	$.ajax("/teams/save", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/teams";
		} else {
		}
	});
});
</script>
<%@ include file="../layout/footer.jsp"%>