<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
  <h2>Team Table</h2>           
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>팀 번호</th>
        <th>팀 이름</th>
        <th>해당 스타디움</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="TeamsDtos" items="${TeamsDtos}">
				<tr>
					<td>${TeamsDtos.id}</td>
					<td>${TeamsDtos.teamsName}</td>
					<td>${TeamsDtos.stadiumsName}</td>
				</tr>
			</c:forEach>
    </tbody>
  </table>
</div>

<%@ include file="../layout/footer.jsp"%>