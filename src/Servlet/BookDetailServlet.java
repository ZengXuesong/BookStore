package Servlet;

import DB_Manager.BookDao;
import DB_Manager.BookDetailDao;
import DB_Manager.BookTypeDao;
import Entity.Book;
import Entity.BookDetail;
import Entity.Type;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/BookDetailServlet")
public class BookDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int book_id= Integer.parseInt(req.getParameter("book_id"));

        BookDetailDao bookDetailDao=new BookDetailDao();
        BookDao bookDao=new BookDao();
        //MerchantDao merchantDao=new MerchantDao();

        Book book=bookDao.findById(book_id);
        BookDetail bookDetail=bookDetailDao.findById(book_id);
        //Merchant merchant=merchantDao.findById(book.getAdmin_id());

        //req.setAttribute("merchant",merchant);


        BookTypeDao bookTypeDao=new BookTypeDao();
        List<Type> types=bookTypeDao.findAll();
        req.setAttribute("boookTypes",types);
        req.setAttribute("book",book);
        req.setAttribute("bookdetail",bookDetail);
        req.getRequestDispatcher("single_product.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req,resp);
    }
}
