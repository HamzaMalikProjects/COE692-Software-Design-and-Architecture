package Buisness;

import Helper.UserInfo;
import Persistence.User_CRUD;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

@WebServlet("/Login") // URL patterns are case-sensitive
public class Login extends HttpServlet { // Class name starts with an uppercase letter
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Placeholder for authentication logic
        
        UserInfo uf = User_CRUD.read(username, password);
        
        boolean isAuthenticated = false;
        if(uf != null){
            isAuthenticated = true;
        }

        if (isAuthenticated) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("email", uf.getEmail());
            session.setAttribute("registrationDate", uf.getRegistrationDate());
            // Ensure the redirect path is correctly configured
            // For example, if dashboard.jsp is at the root of your web application
            response.sendRedirect(request.getContextPath() + "/booking.jsp"); // Adjusted to include .jsp if redirecting to a JSP page
        } else {
            request.setAttribute("errorMessage", "Invalid username or password");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.html");
            dispatcher.forward(request, response);
            
        }
    }
}








