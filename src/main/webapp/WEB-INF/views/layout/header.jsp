<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>BaseBall</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
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
					<li class="nav-item"><a class="nav-link" href="/stadiums">야구장 목록보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/stadiums/saveForm">야구장 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/teams">팀 목록보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/teams/saveForm">팀 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/players">선수 목록보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/players/saveForm">선수 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/players/kickOut">퇴출선수 목록</a></li>					
				</ul>
			</div>
		</div>
	</nav>