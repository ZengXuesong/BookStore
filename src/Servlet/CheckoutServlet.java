package Servlet;

import DB_Manager.BookDao;
import DB_Manager.CartDao;
import Entity.Book;
import Entity.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String ids = req.getParameter("ids");
        String type = req.getParameter("type");
        int userid= (int) req.getSession().getAttribute("state");
        CartDao cartDao=new CartDao();
        BookDao bookDao=new BookDao();
        if("add".equals(type)){
            Book book = bookDao.findById(Integer.parseInt(ids));
            req.setAttribute("book",book);
            // 表示没经过购物车
            req.setAttribute("label","no");
            req.setAttribute("totalprice",book.getPrice());
            req.getRequestDispatcher("shop_checkout.jsp").forward(req,resp);
        }else {
            String[] idsArr = ids.split(",");
            List<Book> bookList=new ArrayList<>();
            List<Cart> cartList=new ArrayList<>();

            double total_price=0;
            for(int i=0;i<idsArr.length;i++){
                cartList.add(cartDao.findByUserIdAndBookId(userid, Integer.parseInt(idsArr[i])));
                bookList.add(bookDao.findById(Integer.parseInt(idsArr[i])));
                total_price+=cartList.get(i).getAll_price();
            }
            req.setAttribute("totalprice",total_price);
            req.setAttribute("booklist",bookList);
            req.setAttribute("cartlist",cartList);
            req.setAttribute("label","yes");
            req.getRequestDispatcher("shop_checkout.jsp").forward(req,resp);

        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req,resp);
    }
}
