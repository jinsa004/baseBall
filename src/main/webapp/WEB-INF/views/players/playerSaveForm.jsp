<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<select class="form-select">
		<option>잠실 야구장</option>
		<option>사직 야구장</option>
		<option>월명 야구장</option>
	</select> <select class="form-select">
		<option>두산</option>
		<option>롯데</option>
		<option>기아</option>
	</select>
	<div class="mb-3 mt-3">
		<label for="email" class="form-label">선수명 : </label> <input type="text" class="form-control"
			id="name" placeholder="Enter name" name="name">
	</div>
	<button type="button" class="btn btn-success">등록완료</button>
</div>

<%@ include file="../layout/footer.jsp"%>