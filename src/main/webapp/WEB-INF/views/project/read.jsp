<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#content { width: 800px; margin: 0 auto; }
	table { width: 600px; 
			border-collapse: collapse;}
	tr, th, td{ border: 1px solid #000;}    
</style>
<script>
	$(function(){
		$("#mod").click(function(){
			var pno = $("input[name='pno']").val();
			location.href= "${pageContext.request.contextPath }/project/update?pno="+pno; 
		})
		$("#del").click(function(){
			var del = confirm("삭제하시겠습니까?");
			if(del){
				var pno = $("input[name='pno']").val();
				location.href = "${pageContext.request.contextPath }/project/delete?pno="+pno; 
			}
			
		})
		$("#go").click(function(){
			location.href = "${pageContext.request.contextPath }/project/list"; 
		})
	})  
          
</script>                    
<body>  
<%@ include file="../include/header.jsp" %>
<div id="content">
	<h1>PROJECT DETAIL</h1>
		<table>
			<tr>
				<th>프로젝트 이름</th>
				<th>프로젝트 내용</th>
				<th>시작 날짜</th>
				<th>종료 날짜</th>
				<th>상태</th>
			</tr>
			<tr>
				<td>${p.name }</td>
				<td>${p.content }</td>
				<td><fmt:formatDate value="${p.startdate }" pattern="yyyy-MM-dd"/></td>
				<td><fmt:formatDate value="${p.enddate }" pattern="yyyy-MM-dd"/></td>
				<td>${p.pstatus }</td>
			</tr>
		</table>
		<input type="hidden" name="pno" value="${p.pno }">
		<button id="mod">수정</button>
		<button id="del">삭제</button>
		<button id="go">돌아가기</button>
	<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>