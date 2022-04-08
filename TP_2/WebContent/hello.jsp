<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">

<h3 style="text-align:center;">

<%    
      /*
      
          // Pramètre 1
      
	      String nom = "Nour Essalam"; 
		  out.println("hello "+nom); 
      */
      
      // Paramètre 2
       String nom = request.getParameter("nom"); 
       out.println("hello "+nom); 
     

%></h3>

</body>
</html>