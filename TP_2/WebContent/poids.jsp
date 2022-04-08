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

   float tall = Float.parseFloat(request.getParameter("taille"));
   String sexe = request.getParameter("sexe"); 
   
   double poids; 
   
    if(sexe=="homme"){
    	
    	poids =  (62.1 * tall) - 44.7;
    }else{
    	poids = (72.7 * tall) - 58;
    }
    
   out.println("<h2><b>Votre poids ideal est : </b></h2>"+poids); 


%>

</body>
</html>