<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
  <h2>Team Table</h2>
  <p>The .table class adds basic styling (light padding and horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
      <tr>
        <th>팀 이름</th>
        <th>위치</th>
        <th>해당 스타디움</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>두산</td>
        <td>서울</td>
        <td>잠실 야구장</td>
      </tr>
      <tr>
        <td>롯데</td>
        <td>부산</td>
        <td>사직 야구장</td>
      </tr>
      <tr>
        <td>기아</td>
        <td>광주</td>
        <td>월명 야구장</td>
      </tr>
    </tbody>
  </table>
</div>

<%@ include file="../layout/footer.jsp"%>