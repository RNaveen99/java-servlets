import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {
        final String name = request.getParameter("name");
        final String number = request.getParameter("number");
        final String email = request.getParameter("email");
        final String password = request.getParameter("password");

        Class.forName("com.mysql.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nav4124", "root", "");
                PreparedStatement stmt1 = conn.prepareStatement("select * from users where email = ?");
                PreparedStatement stmt2 = conn.prepareStatement("insert into users values(?,?,?,?)")) {
            stmt1.setString(1, email);
            ResultSet rs = stmt1.executeQuery();
            if (rs.next()) {
                SessionManagement.setSessionMessage(request, "signUpError", "Email already registered");
                response.sendRedirect("SignUp");
                return;
            }
            stmt2.setString(1, name);
            stmt2.setString(2, number);
            stmt2.setString(3, email);
            stmt2.setString(4, password);
            stmt2.executeUpdate();
            response.sendRedirect("SignIn");
        } catch(Exception e) {
            response.sendRedirect("SignUp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionManagement.ifSignIn(request, response)) return;
        request.getRequestDispatcher("signUp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionManagement.ifSignIn(request, response)) return;
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
