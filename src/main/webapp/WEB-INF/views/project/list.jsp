<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

	div.content { width: 800px; 
				  margin: 0 auto; }  
	table { width: 500px; 
			border-collapse: collapse;   
			margin: 20px 0; }  
	th, td { border: 1px solid #000; text-align: center;}
	
</style> 
<body>   
	<%@ include file="../include/header.jsp" %>
		<div class="content">
				<h3 class="box-title">PROJECT LIST</h3>

				<div class="box-body text-right">
					<a href="${pageContext.request.contextPath}/project/register ">[register]</a>
				</div>
				<div class="box-body">
					<table class="table table-bordered">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>내용</th>
							<th>시작 날짜</th>
							<th>종료 날짜</th>
							<th>진행 상태</th>
						</tr>     
						<c:forEach items="${list }" var="p">
							<tr>
								<td>${p.pno }</td>
								<td><a href="${pageContext.request.contextPath }/project/read?pno=${p.pno}">${p.name }</a></td>
								<td>${p.content }</td>
								<td><fmt:formatDate value="${p.startdate}" pattern="yyyy-MM-dd" /></td>
								<td><fmt:formatDate value="${p.enddate}" pattern="yyyy-MM-dd" /></td>  
								<td>${p.pstatus }</td>
							</tr>       
						</c:forEach>
					</table>    
				</div>  
			</div>
		<%@ include file="../include/footer.jsp" %>
</body>
</html>