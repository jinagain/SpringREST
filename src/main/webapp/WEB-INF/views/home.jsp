<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr>

<input type="button" value="Ajax 호출" id="btnAjax">
<input type="button" value="Ajax 호출2" id="btnAjax2">
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
// 		alert(" JQuery 실행!");
		$('#btnAjax').click(function() {
			$.ajax({
// 			    url: "/controller/test1",
// 			    url: "${pageContext.request.contextPath}/test2?msg=50000",
			    url: "${pageContext.request.contextPath}/test2",
// 			    type:
			    data: {msg:"50000"},
			    success: function(data) {
			        alert("성공"+data);
			    },
			    error: function() {
			        alert("실패");
			    }
			});

		});
		
		$('#btnAjax2').click(function() {
			// REST 컨트롤에서 생성된 객체정보를 가져오기
			var obj = {
					name : "admin",tel : "010-5555-3333"
					};
			$.ajax({
				url: "/controller/test3",
				contentType : "application/json",
				type:"post",
				data: JSON.stringify(obj),
				success: function(obj) {
// 					alert("성공" + obj);
					console.log(obj);
					$('body').append("이름 : " + obj.name + ", 전화번호 : " + obj.tel);
				},
				error: function() {
					alert("실패");
				}
			});
		});
		
	});
</script>
</body>
</html>
