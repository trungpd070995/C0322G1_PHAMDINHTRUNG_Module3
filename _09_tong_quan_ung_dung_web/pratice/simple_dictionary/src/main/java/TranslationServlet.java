import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TranslationServlet", value = "/translate")
public class TranslationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chao");
        dictionary.put("how", "The nao");
        dictionary.put("book", "Quyen vo");
        dictionary.put("computer", "May tinh");

        String search = request.getParameter("txtSearch");

        for (Map.Entry<String, String> entry: dictionary.entrySet()) {
            if (entry.getKey().equals(search)) {
                request.setAttribute("result", entry.getValue());
                request.setAttribute("searchValue", search);
                request.getRequestDispatcher("index.jsp").forward(request,response);
                return;
            }
        }
        request.setAttribute("result", "Nhap chu khac di chu nay tu dien chua co");
        request.setAttribute("searchValue", search);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
