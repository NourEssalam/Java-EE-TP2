<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<style>
	
	   .container{
	        
	        position:absolute;
	        top:30%; 
	        right:50%; 
	        left:40%; 
	        bottom:50%; 
	        
	        
	        width:50%; 
	   }
	    
	    .board{
	         
	         
	         height:auto; 
	          
	         padding-right:-2px;
	         margin:0px;  
	    }
	  
	    
	    .box{
	    	
	    	width:50px; 
	    	height: 50px; 
	    	border:solid #ccc 1px; 
	    	margin:-2px;
	    	display:inline-block; 
	    }
	    
	    .black{
	    	background-color:black; 
	    }
	   
	</style>

<div class="container">	
	<% // taille de N 
	      int size = Integer.parseInt(request.getParameter("size")); %>
	       
	       <% for(int l=0; l<size; l++){ %>
	       
	       <div class="board">        
	                      
	       	 <%   
	         // si N est pair
	         
	         if(size % 2 == 0){
	        	 for(int c=0; c<(size/2); c++){ 	%>
	  	       
	       			<div class="box"></div>
	                <div class="box black"></div>
	            <% } 
	            
	        // si N impair
	        
	         }else{
	        	 int c=0; 
	       	        while(c<size/2){ %>
	       	        	<div class="box"></div>
		                <div class="box black"></div> 	
	            <% c++; } %>
	            
	       	            <div class="box"></div>
	       	            
	                   
	                <% } %>
	        
	       </div>
           <% }  %>
	    
	</div>
	
</body>
</html>