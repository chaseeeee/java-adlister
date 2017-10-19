import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletTest", urlPatterns = "/test")

public class ServletTest extends HttpServlet {

  protected int counter = 0;

  protected void doGet(HttpServletRequest request,
                       HttpServletResponse response)
          throws ServletException, IOException {

    if (request.getParameter("reset") != null) {
      counter = 0;
    }

    counter++;

    response.getWriter().print("<h1>You have visited this page " + counter + " times");

  }
}
