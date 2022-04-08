package calc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FormulaireServlet extends HttpServlet {
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        

		Integer num1 = Integer.parseInt(req.getParameter("numOne"));
		Integer num2 = Integer.parseInt(req.getParameter("numTwo")); 
	    String operate =  req.getParameter("options");  
		
		
        
		
		//ServletContext sc = this.getServletContext();
	    
	    if(operate == null) {
	    	
	    	String message = "aucun opération ";
			req.setAttribute("message", message);
			req.getRequestDispatcher("/erreur.jsp").forward(req, res); 
	    	
	    	
	    }else if(num1 == 0 || num1 == null ) {
			
			String message = "le champs de l'opérands 1 est vide ..";
			req.setAttribute("message", message);
			req.getRequestDispatcher("/erreur.jsp").forward(req, res); 
			
		}else if(num2 == 0 || num2 == null) {
			
			String message = "le champs de l'opérands 2 est vide ..";
			req.setAttribute("message", message);
			req.getRequestDispatcher("/erreur.jsp").forward(req, res);  
			
		}else {
			int result = 0; 
			switch(operate) {
				
			    case "+" : result = num1 + num2; break; 
			    case "-" : result = num1 - num2; break; 
			    case "x" : result = num1 * num2; break; 
			    case "/" : result = num1 / num2; break; 

			}
			
			
			req.setAttribute("message", result);
			req.getRequestDispatcher("/response.jsp").forward(req, res); 
			
		}
	}
}
