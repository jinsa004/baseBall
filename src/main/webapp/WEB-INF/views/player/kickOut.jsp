<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container mt-3">
  <h2>퇴출선수 목록</h2>
  <p>The .table class adds basic styling (light padding and horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
      <tr>
        <th>소속팀</th>
        <th>선수명</th>
        <th>포지션</th>
        <th>퇴출사유</th>
        <th>퇴출일</th>        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>두산</td>
        <td>Doe</td>
        <td>내야수</td>
        <td>개인사정</td>
        <td>date</td>        
      </tr>
      <tr>
        <td>롯데</td>
        <td>Moe</td>
        <td>외야수</td>
        <td>집안일</td>
        <td>date</td>
      </tr>
      <tr>
        <td>기아</td>
        <td>Dooley</td>
        <td>타자</td>
        <td>부상</td>
        <td>date</td>
      </tr>
    </tbody>
  </table>
</div>
<%@ include file="../layout/footer.jsp"%>