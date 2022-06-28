package controller;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = "")
public class CustomerServlet extends HttpServlet {

    static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add( new Customer("Mai Van Hoan", "1983-08-20", "Ha Noi" ));
        customerList.add( new Customer("Nguyen Van Nam", "1983-08-21","Bac Giang"));
        customerList.add( new Customer("Nguyen Thai Hoa", "1983-08-22", "Nam Dinh"));
        customerList.add( new Customer("Tran Dang Khoa","1983-08-23","Ha Tay"));
        customerList.add( new Customer("Nguyen Dinh Thi", "1983-08-24","Ha Noi"));
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("client", customerList);
//      Gửi dữ liệu qua trang JSP.
        request.getRequestDispatcher("clientList.jsp").forward(request,response);
    }

}
