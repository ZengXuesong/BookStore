package Servlet;

import DB_Manager.BookDao;
import DB_Manager.CartDao;
import DB_Manager.OrderDao;
import Entity.Book;
import Entity.Cart;
import Entity.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cart> cartList=new ArrayList<>();
        BookDao bookDao=new BookDao();
        CartDao cartDao=new CartDao();
        OrderDao orderDao=new OrderDao();
        String book_ids=req.getParameter("book_ids");

        String type=req.getParameter("type");
        if (null == req.getSession().getAttribute("state")) {
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        } else{
            int userid= (int) req.getSession().getAttribute("state");
            if(type.equals("find")){

                List<Book> bookListOrder=new ArrayList<>();
                List<Order> orderList=orderDao.findByUserId(userid);
                for(int i=0;i<orderList.size();i++){
                    bookListOrder.add(bookDao.findById(orderList.get(i).getBook_id()));
                }
                req.setAttribute("booklistorder",bookListOrder);
                req.setAttribute("orderlist",orderList);
                req.getRequestDispatcher("orderlist.jsp").forward(req,resp);

            }else if(type.equals("delete")){
                if(orderDao.deleteById(Integer.parseInt(book_ids))) {

                    List<Book> bookListOrder=new ArrayList<>();
                    List<Order> orderList=orderDao.findByUserId(userid);
                    for(int i=0;i<orderList.size();i++){
                        bookListOrder.add(bookDao.findById(orderList.get(i).getBook_id()));
                    }
                    req.setAttribute("booklistorder",bookListOrder);
                    req.setAttribute("orderlist",orderList);
                    req.getRequestDispatcher("orderlist.jsp").forward(req,resp);
                }
            }else {
                String username=req.getParameter("username");

                String address=req.getParameter("address");
                String phone=req.getParameter("contact-phone");
                String remark=req.getParameter("remark");

                java.text.SimpleDateFormat formatter =
                        new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");

                java.util.Date date3 = null;
                try {
                    date3 = formatter.parse(formatter.format(System.currentTimeMillis()));
                } catch (ParseException e) {
                    e.printStackTrace();
                }



                Timestamp add_at= new Timestamp(date3.getTime());

                if(book_ids!=null && !book_ids.replace(" ","").equals("")){
                    if(book_ids.endsWith(",")){
                        book_ids = book_ids.substring(0,book_ids.length()-1);
                    }
                    String[] ids= book_ids.split(",");

                    if (type.equals("no")){
                        Order order=new Order();
                        Book book = bookDao.findById(Integer.parseInt(ids[0]));
                        order.setUser_id(userid)
                                .setBook_id(Integer.parseInt(ids[0]))
                                .setUsername(username)
                                .setCount(1)
                                .setAddress(address).setAdd_date(add_at)
                                .setPhone(phone)
                                .setAll_price(book.getPrice())
                                .setRemark(remark)
                                .setState(1);
                        orderDao.addOne(order);
                    }else {
                        for(int i=0;i<ids.length;i++){
                            Order order=new Order();
                            cartList.add(cartDao.findByUserIdAndBookId(userid,Integer.parseInt(ids[i])));
                            order.setUser_id(userid)
                                    .setBook_id(Integer.parseInt(ids[i]))
                                    .setUsername(username)
                                    .setCount(cartList.get(i).getCount())
                                    .setAddress(address).setAdd_date(add_at)
                                    .setPhone(phone)
                                    .setAll_price(cartList.get(i).getAll_price())
                                    .setRemark(remark)
                                    .setState(1);
                            orderDao.addOne(order);
                        }
                    }
                }
                List<Book> bookListOrder=new ArrayList<>();
                List<Order> orderList=orderDao.findByUserId(userid);
                for(int i=0;i<orderList.size();i++){
                    bookListOrder.add(bookDao.findById(orderList.get(i).getBook_id()));
                }
                req.setAttribute("booklistorder",bookListOrder);
                req.setAttribute("orderlist",orderList);
                req.getRequestDispatcher("orderlist.jsp").forward(req,resp);
            }
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req,resp);
    }
}
