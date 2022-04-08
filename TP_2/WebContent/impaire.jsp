<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">

<%
    	

		int x = 1; 
		int i; 
		
		for(i=1; i<=10; i++){
			if(x % 2 == 0)
				out.println(x+"|");  
				x++; 
		}
%>

</body>
</html>