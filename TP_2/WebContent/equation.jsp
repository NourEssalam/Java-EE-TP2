<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>

body{
      font-family:monospace; 
}
	#negatif{
	      background: red; 
	      width:300px; 
	      padding:30px;
	      margin:auto; 
	      text-align:center; 
	      font-size:1.5em; 
	      border:solid; 
	 }
	 
	 #null{
	      background: white; 
	      width:300px; 
	      padding:30px;
	      margin:auto; 
	      text-align:center; 
	      font-size:1.5em; 
	      border:solid; 
	      
	 }
	 
	 #positif{
	      background: green; 
	      width:300px; 
	      padding:30px;
	      margin:auto; 
	      text-align:center; 
	      font-size:1.5em; 
	      border:solid; 
	      
	 }
</style>
</head>
<body>
   
 <%
   // declaration 
   int a = Integer.parseInt(request.getParameter("a"));
   int b = Integer.parseInt(request.getParameter("b"));
   int c = Integer.parseInt(request.getParameter("c"));
   
   int delta = (b*b)-4*a*c; 
   
	    if(delta < 0 ){
	      
	    	%>
	    	<p id="negatif"> <% out.println("Aucun résultat Réel"); %> </p>

	  <% 
	    	
	   }else if(delta == 0){ %>
	    	<p id="null"> <% out.println(delta); %> </p>

	  <% }else{
		  %>
	    	<p id="positif"> <% out.println(delta); %> </p>

	  <% 
	   }
   %>
       
   
   
  
</body>
</html>