package Servlet;

import DB_Manager.BookDao;
import DB_Manager.BookTypeDao;
import Entity.Book;
import Entity.Type;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int category= Integer.parseInt(req.getParameter("category"));
        String search=req.getParameter("search");
        BookDao bookDao=new BookDao();
        List<Book> list= bookDao.search(search,category);

        BookTypeDao bookTypeDao=new BookTypeDao();
        List<Type> types=bookTypeDao.findAll();
        for (int i = 0; i < list.size(); i++) {

            for (int j = 0; j < types.size(); j++) {
                if (list.get(i).getType_id() == types.get(j).getId()) {
                    list.get(i).setType_name(types.get(j).getName());
                }

            }
        }
        req.setAttribute("book_list",list);
        req.setAttribute("boookTypes",types);
        req.getRequestDispatcher("shop.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req,resp);
    }
}
