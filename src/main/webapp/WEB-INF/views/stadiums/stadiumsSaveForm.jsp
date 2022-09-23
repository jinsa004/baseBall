<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<form>
	<div class="container mt-3">
		<div class="mb-3 mt-3">
			<h3>Stadium name :</h3>
			<input id="name" type="text" class="form-control" placeholder="Enter name">
		</div>
		<button id="btnStadiumsSave" type="button" class="btn btn-success">등록완료</button>
	</div>
</form>

<script>

$("#btnStadiumsSave").click(()=>{

	let name = $("#name").val();

	$.ajax("/stadiums/save", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(name),
		headers: {
			"Content-Type": "application/json; charset=utf-8" //헤더에 바디의 데이터가 json이라는 것을 담아주는 것, MIME 타입 검색해서 보기
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/stadiums";
		} else {
		}
	});
});

</script>

<%@ include file="../layout/footer.jsp"%>