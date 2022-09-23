<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<h2>Player Table</h2>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>소속팀</th>
				<th>선수명</th>
				<th>포지션</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="players" items="${players}">
				<tr>
					<td>${players.teamsName}</td>
					<td>${players.playersName}</td>
					<td>${players.position}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="../layout/footer.jsp"%>