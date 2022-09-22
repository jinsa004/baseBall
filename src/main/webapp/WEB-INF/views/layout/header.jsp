<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>Super Baseball</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">Super Baseball</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link" href="/stadium/saveForm">야구장 목록보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/stadium">야구장 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/team/saveForm">팀 목록보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/team">팀 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/player/saveForm">선수 목록보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/player">선수 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/player/kickOut">퇴출선수 목록</a></li>					
				</ul>
			</div>
		</div>
	</nav>