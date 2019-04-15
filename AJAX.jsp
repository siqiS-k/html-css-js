<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>
	var xMLHttpRequest = new XMLHttpRequest();
	function findTutorials(){
		xMLHttpRequest.open("GET","/Capic_Web24/Ajax",true);
		xMLHttpRequest.onreadystatechange = processTu;
		xMLHttpRequest.send(null);
	}
	function processTu(){
		if(xMLHttpRequest.readyState == 4 && xMLHttpRequest.status == 200){
		    document.getElementById("CC").innerHTML=xMLHttpRequest.responseText;
		}else{
		}
		
	}


</script>

<title>Insert title here</title>
</head>
<body>
	<p id="CC"></p>
	<button type="button" onclick="findTutorials();">find T</button>
</body>
</html>