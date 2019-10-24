import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionManagement {
    public static Boolean ifSignIn(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("email") != null) {
            response.sendRedirect("HomePage");
            return true;
        }
        return false;
    }
    public static Boolean ifNotSignIn(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("email") == null) {
            response.sendRedirect("SignIn");
            return true;
        }
        return false;
    }
    public static void setSession(HttpServletRequest request, ResultSet rs) throws SQLException {
        HttpSession session = request.getSession();
        session.setAttribute("name", rs.getString("name"));
        session.setAttribute("email", rs.getString("email"));
        session.setAttribute("number", rs.getString("number"));
    }
    public static void setSessionMessage(HttpServletRequest request, String variable, String message) throws SQLException {
        HttpSession session = request.getSession();
        session.setAttribute(variable, message);
    }
    public static void destroySession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        int a;
    }
}
