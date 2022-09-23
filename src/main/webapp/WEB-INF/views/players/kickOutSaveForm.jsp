<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<select id="teamsId" onchange="selectBoxChange(this.value);" class="form-select">
		<c:forEach var="teams" items="${teams}">
			<option value="${teams.id}">${teams.teamsName}</option>
		</c:forEach>
	</select>
		<select id="playersId" onchange="selectBoxChange(this.value);" class="form-select">
			<c:forEach var="players" items="${players}">
				<option value="${players.id}">${players.playersName}</option>
			</c:forEach>
		</select> <label for="text" class="form-label">퇴출사유 : </label> <input id="reason" type="text"
			class="form-control" placeholder="Enter name"> <input id="createdAt" type="hidden">
	<button id="btnPlayersKickOut" type="button" class="btn btn-success">등록완료</button>
</div>

<script>
$("#btnPlayersKickOut").click(()=>{

	let data = {
			teamsId : $("#teamsId").val(),
			playersId: $("#playersId").val(),
			reason : $("#reason").val(),
			createdAt : $("createdAt").val()
		};

	$.ajax("/players/KickOutSave", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/players/kickOut";
		} else {
		}
	});
});
</script>
<%@ include file="../layout/footer.jsp"%>