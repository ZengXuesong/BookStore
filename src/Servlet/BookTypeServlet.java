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

@WebServlet("/BookTypeServlet")
public class BookTypeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type_id=req.getParameter("typeid");
        BookDao bookDao=new BookDao();
        List<Book> list=null;
        if(type_id!=null && !type_id.equals("")){
            list=bookDao.findByType(Integer.parseInt(type_id));
        }else {
            list=bookDao.findAll();
        }

        BookTypeDao bookTypeDao=new BookTypeDao();
        List<Type> types=bookTypeDao.findAll();
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
