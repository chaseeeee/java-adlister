import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.jws.WebService;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name  = "ShowAds", urlPatterns = "/showads")

class ShowAds extends HttpServlet {
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // interacts with models
        Ads ads = DaoFactory.getAdsDao();
        request.setAttribute("ads", ads.all());
        try {
          request.getRequestDispatcher("/showads.jsp").forward(request, response);
        } catch (ServletException e) {
          e.printStackTrace();
        } catch (IOException e) {
          e.printStackTrace();
        }
      }
    }





