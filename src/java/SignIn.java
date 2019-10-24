import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignIn extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nav4124", "root", "");
            PreparedStatement stmt = conn.prepareStatement("select * from users where email = ?")) {
            final String email = request.getParameter("email");
            final String password = request.getParameter("password");            
            stmt.setString(1, email);            
            ResultSet rs = stmt.executeQuery();             
            if (rs.next()) {
                if (rs.getString("password").equals(password)) {
                    SessionManagement.setSession(request, rs);
                    response.sendRedirect("HomePage");
                } else {
                    SessionManagement.setSessionMessage(request, "signInError", "Wrong Password");
                    response.sendRedirect("SignIn");
                }
            } else {
                SessionManagement.setSessionMessage(request, "signInError", "Email not registered");
                response.sendRedirect("SignIn");
            }
        } catch(Exception e) {
            response.sendRedirect("SignIn");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionManagement.ifSignIn(request, response)) return;
        request.getRequestDispatcher("signIn.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionManagement.ifSignIn(request, response)) return;
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignIn.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
