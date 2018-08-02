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

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        BookTypeDao bookTypeDao = new BookTypeDao();
        BookDao bookDao = new BookDao();
        List<Book> newest_bookList = bookDao.findAllByTime();
        List<Type> typeList = bookTypeDao.findAll();
        for (int i = 0; i < newest_bookList.size(); i++) {

            for (int j = 0; j < typeList.size(); j++) {
                if (newest_bookList.get(i).getType_id() == typeList.get(j).getId()) {
                    newest_bookList.get(i).setType_name(typeList.get(j).getName());
                }

            }
        }

        List<Book> sale_bookList=bookDao.findAllBySale();
        for (int i = 0; i < sale_bookList.size(); i++) {

            for (int j = 0; j < typeList.size(); j++) {
                if (sale_bookList.get(i).getType_id() == typeList.get(j).getId()) {
                    sale_bookList.get(i).setType_name(typeList.get(j).getName());
                }

            }
        }

        List<Book> random_bookList=bookDao.findRandom();
        for (int i = 0; i < random_bookList.size(); i++) {

            for (int j = 0; j < typeList.size(); j++) {
                if (random_bookList.get(i).getType_id() == typeList.get(j).getId()) {
                    random_bookList.get(i).setType_name(typeList.get(j).getName());
                }

            }
        }
        req.setAttribute("booktypes",typeList);
        req.setAttribute("randombooklist",random_bookList);
        req.setAttribute("newestbooklist",newest_bookList);
        req.setAttribute("salebooklist",sale_bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req, resp);
    }
}
