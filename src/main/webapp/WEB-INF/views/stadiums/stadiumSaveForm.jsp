<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<form>
	<div class="container mt-3">
		<div class="mb-3 mt-3">
			<p>Stadium name :</p>
			<input id="name" type="text" class="form-control" placeholder="Enter name">
		</div>
		<button id="btnStadiumsSave" type="button" class="btn btn-success">등록완료</button>
	</div>
</form>

<script>

$("#btnStadiumsSave").click(() => {

let name = $("#name").val()

$.ajax("/stadiums/save", {
	type: "POST",
	dataType: "json", 
	data: JSON.stringify(name), 
	headers: {
		"Content-Type": "application/json" 
	}
}).done((res) => {
	if (res.code == 1) {
		location.href = "/stadiums";
	};
});

});

</script>

<%@ include file="../layout/footer.jsp"%>