//package com.hujunyao.servlet;
//
//import com.hujunyao.pojo.User;
//import com.hujunyao.service.UserService;
//import com.hujunyao.service.impl.UserServiceImpl;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class RegistServlet extends HttpServlet {
//
//    private UserService userService = new UserServiceImpl();
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // 获取请求的参数，这里并不验证数据格式是否合法(已经在js中实现)，指查询数据是否在数据库中存在
//        String username = req.getParameter("username");
//        String password = req.getParameter("password");
//        String email = req.getParameter("email");
//        // 检查用户名是否可用
//        if (userService.existsUsername(username)) {
//            System.out.println("用户名[" + username + "]已存在！");
//            // 把回显信息，保存到Request域中
//            req.setAttribute("msg", "用户名已存在！");
//            req.setAttribute("username", username);
//            req.setAttribute("email", email);
//            //  跳回注册页面
//            req.getRequestDispatcher("/user/regist.jsp").forward(req, resp);
//        } else {
//            //  调用Sservice保存到数据库
//            userService.registUser(new User(null, username, password, email));
//            //  跳到注册成功页面/user/regist_success.jsp
//            req.getRequestDispatcher("/user/regist_success.jsp").forward(req, resp);
//        }
//
//    }
//}
