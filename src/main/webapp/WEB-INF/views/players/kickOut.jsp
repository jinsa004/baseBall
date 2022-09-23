<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container mt-3">
  <h2>퇴출선수 목록</h2>
  <table class="table">
    <thead>
      <tr>
        <th>소속팀</th>
        <th>선수명</th>
        <th>퇴출사유</th>
        <th>퇴출일</th>        
      </tr>
    </thead>
    <tbody>
      <tr>
			<c:forEach var="kickOut" items="${kickOut}">
				<tr>
					<td>${kickOut.teamsName}</td>
					<td>${kickOut.playersName}</td>
					<td>${kickOut.reason}</td>
					<td>${kickOut.createdAt}</td>
				</tr>
			</c:forEach>
      </tr>
    </tbody>
  </table>
</div>
<%@ include file="../layout/footer.jsp"%>