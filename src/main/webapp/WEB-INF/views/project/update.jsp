<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	form { width: 800px; margin: 0 auto; }
</style>
<script>
	$(function(){
		$("#reset").click(function(){
				var pno = $("input[name='pno']").val();   
				location.href = "${pageContext.request.contextPath }/project/read?pno=${p.pno}";   
		})
		
	})        
</script>   
<body>
<%@ include file="../include/header.jsp" %>
	<form action="update" method="post">  
	<h1>프로젝트 수정</h1>
		<p>  
			<label>프로젝트 이름</label>
			<input type="text" name="name" value=${p.name }>
		</p>
		<p>          
			<label>프로젝트 내용</label>          
			<textarea cols="30" rows="5" name="content">${p.content }</textarea>
		</p>
		<p>
			<label>시작 날짜</label>
			<input type="text" name="startdate" value="<fmt:formatDate value='${p.startdate }' pattern='yyyy-MM-dd'/>">
		</p>
		<p>
			<label>종료 날짜</label>
			<input type="text" name="enddate" value="<fmt:formatDate value='${p.enddate }' pattern='yyyy-MM-dd'/>">
			<input type="hidden" name="pno" value="${p.pno }">
		</p>
		<p>
			<label>상태</label>
			<c:if test="${p.pstatus=='준비' }">
				<select name="pstatus">
					<option selected="selected">준비</option>
					<option>진행중</option>
					<option>종료</option>
					<option>보류</option>   
				</select>
			</c:if>
			
			<c:if test="${p.pstatus=='진행중' }">
				<select name="pstatus">
					<option>준비</option>
					<option selected="selected">진행중</option>
					<option>종료</option>
					<option>보류</option>
				</select>
			</c:if>
			
			<c:if test="${p.pstatus=='종료' }">
				<select name="pstatus">
					<option">준비</option>
					<option>진행중</option>  
					<option selected="selected">종료</option>
					<option>보류</option>
				</select>
			</c:if>
			
			<c:if test="${p.pstatus=='보류' }">
				<select name="pstatus">
					<option">준비</option>
					<option>진행중</option>
					<option>종료</option>
					<option selected="selected">보류</option>
				</select>
			</c:if>  
			
		</p>
		
		<button id="mod">수정</button>   
		<button id="reset">취소</button>   
		</form>
<%@ include file="../include/footer.jsp" %>
</body>
</html>