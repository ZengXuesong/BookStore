package Servlet;

import Compare.Compare;
import DB_Manager.UserDao;
import Entity.User;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String type=req.getParameter("type");
        java.text.SimpleDateFormat formatter =
                new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");

        java.util.Date date3 = null;
        try {
            date3 = formatter.parse(formatter.format(System.currentTimeMillis()));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Timestamp create_at= new Timestamp(date3.getTime());
        if("login".equals(type)){
            String name=req.getParameter("name-login");
            String password=req.getParameter("password-login");
            List<User> list=new ArrayList<>();
            UserDao userDao=new UserDao();
            User user = null;
            if(Compare.isPhone(name)){
                user=userDao.findPhoneAndPassword(name,password);
            }else{
                user=userDao.findNameAndPwd(name,password);
            }

            if(user != null){
                Timestamp login_at=create_at;
                if(userDao.updateUser(name,login_at,1)){
                    HttpSession session=req.getSession();
                    session.setAttribute("username",user.getUsername());
                    session.setAttribute("state",user.getId());
                    req.getRequestDispatcher("IndexServlet").forward(req,resp);
                }
            }else {
                req.getRequestDispatcher("./fail.jsp").forward(req,resp);
            }
        }else {
            String username=req.getParameter("name-register");
            String pwd=req.getParameter("password-register");
            String confirm_pwd=req.getParameter("confirm-password-register");
            String phone=req.getParameter("phone-register");
            String email=req.getParameter("email-register");
            //男-0；女-1
            int sex= Integer.parseInt(req.getParameter("sex"));
            Timestamp login_at=create_at;
            UserDao userDao=new UserDao();
            HttpSession session=req.getSession();
            boolean bool=true;
            if(!Compare.isUsername(username)){
                bool=false;
                session.setAttribute("fail","用户名只能由5-20个字母组成");
                //req.getRequestDispatcher("./register.jsp").forward(req,resp);
            }else if(userDao.findByName(username)!=null){
                bool=false;
                session.setAttribute("fail","用户名已存在");
            } else if(!Compare.isPwd(pwd)){
                bool=false;
                session.setAttribute("fail","密码由6-20个字母或数字组成");

            }else if(!pwd.equals(confirm_pwd)){
                bool=false;
                session.setAttribute("fail","两次密码不相等");
            }else if(!Compare.isPhone(phone)){
                bool=false;
                session.setAttribute("fail","手机号格式不正确");
            }else if(userDao.findByPhone(phone)!=null) {
                bool = false;
                session.setAttribute("fail", "手机号已存在");
            }
//            }else if(!Compare.isEmail(email)){
//                bool=false;
//                session.setAttribute("fail","邮箱格式不正确");
//            }
//        }

            if(bool){
                User user=new User(username,pwd,phone,sex,email,create_at,login_at,0);
                userDao.addOne(user);
                session.setAttribute("success","注册成功！");
                req.getRequestDispatcher("./login.jsp").forward(req,resp);
            }else{
                req.getRequestDispatcher("./fail.jsp").forward(req,resp);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        this.doGet(req,resp);
    }
}
