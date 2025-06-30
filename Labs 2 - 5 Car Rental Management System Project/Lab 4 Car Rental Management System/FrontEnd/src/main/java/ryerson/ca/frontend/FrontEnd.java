package ryerson.ca.frontend;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map.Entry;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ryerson.ca.business.Business;
import ryerson.ca.helper.CarsXML; // Assuming a similar helper class for cars

@WebServlet(name = "FrontEnd", urlPatterns = {"/FrontEnd"})
public class FrontEnd extends HttpServlet {

    private Authenticate autho;

    public FrontEnd() {
        autho = new Authenticate();
    }
    private final String authenticationCookieName = "login_token";

    private Map.Entry<String, String> isAuthenticated(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        String token = "";
        
        try {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(authenticationCookieName)) {
                    token = cookie.getValue();
                }
            }
        } catch (Exception e) {
            // Log or handle exception as appropriate
        }
        if (!token.isEmpty()) {
            try {
                Entry<Boolean, String> verificationResult = this.autho.verify(token);
                if (verificationResult.getKey()) {
                    return new AbstractMap.SimpleEntry<>(token, verificationResult.getValue());
                }
            } catch (UnsupportedEncodingException ex) {
                Logger.getLogger(FrontEnd.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return new AbstractMap.SimpleEntry<>("", "");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String token = isAuthenticated(request).getKey();
        String username = isAuthenticated(request).getValue();
        String hiddenParam = request.getParameter("pageName");

        switch (hiddenParam) {
            case "login":
                username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean isAuthenticated = Business.isAuthenticated(username, password);
                if (isAuthenticated) {
                    request.setAttribute("username", username);
                    token = autho.createJWT("FrontEnd", username, 100000);

                    Cookie newCookie = new Cookie(authenticationCookieName, token);
                    response.addCookie(newCookie);

                    forwardRequest(request, response, "frontpageWithLogin.jsp");
                }
                break;
            case "search":
                String query = request.getParameter("query");
                CarsXML result = retrieveServicesFromBackend(query, token);

                request.setAttribute("carResults", result);
                String pageToForward = token.isEmpty() ? "frontpageWithoutLogin.jsp" : "frontpageWithLogin.jsp";
                request.setAttribute("username", username); // Set username if logged in

                forwardRequest(request, response, pageToForward);
                break;
            // Additional cases as needed
        }
    }

    private void forwardRequest(HttpServletRequest request, HttpServletResponse response, String page)
            throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
        requestDispatcher.forward(request, response);
    }

    private CarsXML retrieveServicesFromBackend(String query, String token) {
        try {
            return Business.getServices(query, token); // Assuming Business.getServices now returns CarsXML
        } catch (IOException ex) {
            Logger.getLogger(FrontEnd.class.getName()).log(Level.SEVERE, null, ex);
            return null; // Consider handling this more gracefully
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description"; // Adjust as necessary
    }
}
