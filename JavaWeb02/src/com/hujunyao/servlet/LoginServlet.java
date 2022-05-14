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
//public class LoginServlet extends HttpServlet {
//
//    private UserService userService = new UserServiceImpl();
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String username = req.getParameter("username");
//        String password = req.getParameter("password");
//        // 检查用户名是否不存在
//        if (!userService.existsUsername(username)) {
//            System.out.println("用户名[" + username + "] 不存在，无法登录！");
//            // 把回显信息，保存到Request域中
//            req.setAttribute("msg", "用户名不存在！");
//            req.setAttribute("username", username);
//            //  跳回注册页面
//            req.getRequestDispatcher("/user/login.jsp").forward(req, resp);
//        } else {
//            if (userService.login(new User(null, username, password, null)) == null) {
//                System.out.println("用户名[" + username + "] 的密码错误，无法登录！");
//                // 把回显信息，保存到Request域中
//                req.setAttribute("msg", "密码错误！");
//                req.setAttribute("username", username);
//                //  跳回注册页面
//                req.getRequestDispatcher("/user/login.jsp").forward(req, resp);
//            } else {
//                //  跳到注册成功页面/user/login_success.jsp
//                req.getRequestDispatcher("/user/login_success.jsp").forward(req, resp);
//            }
//
//        }
//
//    }
//}
