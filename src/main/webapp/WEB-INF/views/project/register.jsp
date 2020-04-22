<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	$(function(){
		$("button[type='submit']").click(function(){
			var pno = $("input[name='pno']").val();
			var name = $("input[name='name']").val();
			var content = $("textarea[name='content']").val();
			var stdate = $("input[name='startdate']").val();
			var enddate = $("input[name='enddate']").val();
			
			if(pno=="" ||  name=="" || content=="" || stdate =="" || enddate=="" ){
				alert("빈칸을 모두 채워주세요.");
				return false;
			}
			
		})
	})     
          
</script> 

<style>
	.content { width: 800px; margin: 0 auto; }
	label { width: 120px; 
			float: left;} 
	div.content { width: 800px;
				  margin: 0 auto; }	  
</style>
<body>
<%@ include file="../include/header.jsp" %>
	<div class="content">	
	    
	<div class="row">
		<div class="col-sm-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">REGISTER NEW PROJECT</h3>
				</div>
				<form role="form" action="register" method="post">
					<div class="box-body">
						<div class="form-group">
							<label>project No</label>
							<input type="text" name="pno" class="form-control" placeholder="ex)3">  
						</div>
						<div class="form-group">
							<label>project name</label>
							<input type="text" name="name" class="form-control" placeholder="Enter project Name here">
						</div>
						<div class="form-group">
							<label>project content</label>
							<textarea rows="5" cols="30" placeholder="Enter Content here" name="content" class="form-control"></textarea>
						</div>
						<div class="form-group">   
							<label>start date</label>
							<input type="text" name="startdate" class="form-control" placeholder="ex)2020-04-20">
						</div>
						<div class="form-group">
							<label>end date</label>
							<input type="text" name="enddate" class="form-control" placeholder="ex)2020-04-20">
						</div>
						<div class="form-group">
							<label>project status</label>
							<select name="pstatus">
								<option>준비</option>
								<option>진행중</option>
								<option>종료</option>
								<option>보류</option>
							</select>
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>