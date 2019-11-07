import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Practical extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int practicalNum = 0;
//        PrintWriter out = response.getWriter();
//        String query = request.getQueryString();
//        String req = request.getRequestURL().toString();
//        try {
//            practicalNum = Integer.parseInt(request.getParameter("practicalNum"));
//        } catch(NumberFormatException ex) {
//            
//        }
//        response.sendRedirect("practical" + practicalNum + ".jsp");
        final int practicalNum = Integer.parseInt(request.getParameter("practicalNum"));
        String uri = "practical" + practicalNum + ".jsp";
        request.getRequestDispatcher(uri).include(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (SessionManagement.ifNotSignIn(request, response)) return;
        processRequest(request, response);
    }
}
