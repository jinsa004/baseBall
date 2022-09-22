<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container mt-3">
  <h2>Player Table</h2>
  <p>The .table class adds basic styling (light padding and horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
      <tr>
        <th>소속팀</th>
        <th>선수명</th>
        <th>포지션</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>두산</td>
        <td>Doe</td>
        <td>내야수</td>
      </tr>
      <tr>
        <td>롯데</td>
        <td>Moe</td>
        <td>외야수</td>
      </tr>
      <tr>
        <td>기아</td>
        <td>Dooley</td>
        <td>타자</td>
      </tr>
    </tbody>
  </table>
</div>

<%@ include file="../layout/footer.jsp"%>