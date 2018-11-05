<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
var xhr = new XMLHttpRequest();
var formData = new FormData();
formData.append("name", "zerocho");
formData.append("birth", "1994");
xhr.onreadystatechange = function(){
	if(xhr.readyState == xhr.DONE){
		if(xhr.status == 200 || xhr.status == 201){
			alert(xhr.responseText);
		}else{
			alert("에러 : " + xhr.responseText);
		}
	}
};
xhr.open("POST", "https://www.zerocho.com/api/post/formData");
xhr.send(formData);
</script>
</head>
<body>
<ul>
	<li id="aaa" data-id="1" data-user="prog">zero</li>
</ul>
<script>
</script>
</body>
</html>