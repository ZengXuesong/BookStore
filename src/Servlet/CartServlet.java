package Servlet;

import DB_Manager.AdminDao;
import DB_Manager.BookDao;
import DB_Manager.BookTypeDao;
import DB_Manager.CartDao;
import Entity.Admin;
import Entity.Book;
import Entity.Cart;
import Entity.Type;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String type=req.getParameter("type");
        String book_id=req.getParameter("check_id");
        CartDao cartDao=new CartDao();
        BookDao bookDao=new BookDao();
        BookTypeDao bookTypeDao=new BookTypeDao();
        AdminDao adminDao=new AdminDao();
        if(book_id!=null){
            int count= Integer.parseInt(req.getParameter("count"));
            int state= (int) req.getSession().getAttribute("state");
            Book book=bookDao.findById(Integer.parseInt(book_id));
            cartDao.updateCountAndCount(book.getPrice(),count,state,Integer.parseInt(book_id));
        }
        if(type != null){
            if(type.equals("add")){
                int bookid= Integer.parseInt(req.getParameter("id"));
                req.getSession().getAttribute("state");


                if (null == req.getSession().getAttribute("state")) {
                    req.getRequestDispatcher("login.jsp").forward(req,resp);
                } else {
                    int state= (int) req.getSession().getAttribute("state");


                    if(cartDao.findByUserIdAndBookId(state,bookid)!=null){
                        Book book=bookDao.findById(bookid);
                        cartDao.updateCount(book.getPrice(),state,bookid);

                    }else {
                        Book book=bookDao.findById(bookid);
                        Cart cart=new Cart();
                        cart.setUser_id(state);
                        cart.setBook_id(bookid);
                        cart.setCount(1);
                        cart.setAll_price(book.getPrice());
                        cartDao.addOne(cart);
                    }
                    List<Cart> cartList=cartDao.findByUserId(state);
                    List<Book> bookList=new ArrayList<>();
                    for(int i=0;i<cartList.size();i++){
                        bookList.add(bookDao.findById(cartList.get(i).getBook_id()));
                        Type booktype=bookTypeDao.findById(bookList.get(i).getType_id());
                        Admin admin=adminDao.findById(bookList.get(i).getAdmin_id());
                        bookList.get(i).setType_name(booktype.getName());
                        bookList.get(i).setAdmin_name(admin.getName());
                    }
                    req.setAttribute("cartlist",cartList);
                    req.setAttribute("booklist",bookList);
                    req.getRequestDispatcher("shop_cart.jsp").forward(req,resp);
                }
            }else if(type.equals("delete")){
                String cart_id=req.getParameter("cart_id");
                if(cartDao.deleteById(Integer.parseInt(cart_id))){
                    int state= (int) req.getSession().getAttribute("state");
                    List<Cart> cartList=cartDao.findByUserId(state);
                    List<Book> bookList=new ArrayList<>();
                    for(int i=0;i<cartList.size();i++){
                        bookList.add(bookDao.findById(cartList.get(i).getBook_id()));
                        Type booktype=bookTypeDao.findById(bookList.get(i).getType_id());
                        Admin admin=adminDao.findById(bookList.get(i).getAdmin_id());
                        bookList.get(i).setType_name(booktype.getName());
                        bookList.get(i).setAdmin_name(admin.getName());
                    }
                    req.setAttribute("cartlist",cartList);
                    req.setAttribute("booklist",bookList);
                    req.getRequestDispatcher("shop_cart.jsp").forward(req,resp);
                }
            } else {
                req.getSession().getAttribute("state");
                if (null == req.getSession().getAttribute("state")) {
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                } else {
                    int state = (int) req.getSession().getAttribute("state");
                    List<Cart> cartList = cartDao.findByUserId(state);
                    List<Book> bookList = new ArrayList<>();
                    for (int i = 0; i < cartList.size(); i++) {
                        bookList.add(bookDao.findById(cartList.get(i).getBook_id()));
                        Type booktype = bookTypeDao.findById(bookList.get(i).getType_id());
                        Admin admin = adminDao.findById(bookList.get(i).getAdmin_id());
                        bookList.get(i).setType_name(booktype.getName()).setAdmin_name(admin.getName());
                    }
                    req.setAttribute("cartlist", cartList);
                    req.setAttribute("booklist", bookList);
                    req.getRequestDispatcher("shop_cart.jsp").forward(req, resp);
                }
        }

        }

}

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req,resp);
    }
}
