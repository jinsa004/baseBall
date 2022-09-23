<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container mt-3">
	<h2>Stardium Table</h2>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>구장번호</th>
				<th>야구장명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="stadiums" items="${stadiums}">
				<tr>
					<td>${stadiums.id}</td>
					<td>${stadiums.stadiumsName}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="../layout/footer.jsp"%>