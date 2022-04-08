<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<%

	int htmlScore = Integer.parseInt(request.getParameter("html")); 
	int progScore = Integer.parseInt(request.getParameter("prog")); 
	int sc = htmlScore + progScore ;
	
	out.println("votre score = " +sc);
	 
	 if(sc<3) out.println("Vous êtes un débutant");
	 else  if(sc<5) out.println("Vous êtes un moyen");
	 else out.println("Vous êtes un éxpert");
%>

</body>
</html>