import javax.servlet.annotation.WebServlet;
import javax.jws.WebService;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name  = "SumServlet", urlPatterns = "/")

public class Sum extends HttpServlet{

  protected void doGet(HttpServletRequest request,
                       HttpServletResponse response)
          throws IOException {

    int a=1, b=1, c=1;

    a = Integer.parseInt(request.getParameter("num1"));
    b = Integer.parseInt(request.getParameter("num2"));

    /*if (a.equals("")) {
      response.getWriter().print("<h1>Your querystring was null!");
    }
    else {
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      out.println("<h3>HIT COUNT IS:" + a * b);
    }
*/
  }

}
