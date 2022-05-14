package com.hujunyao.servlet;

import com.google.gson.Gson;
import com.hujunyao.pojo.*;
import com.hujunyao.service.UserService;
import com.hujunyao.service.impl.UserServiceImpl;
import com.hujunyao.utils.WebUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Pattern;

public class UserServlet extends BaseServlet {

    private UserService userService = new UserServiceImpl();

    /**
     * 处理登录的功能
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = DigestUtils.md5Hex(req.getParameter("password"));
        // 检查用户名是否不存在
        if (!userService.existsUsername(username)) {
            System.out.println("用户名[" + username + "] 不存在，无法登录！");
            // 把回显信息，保存到Request域中
            req.setAttribute("msg", "用户名不存在！");
            req.setAttribute("username", username);
            //  跳回注册页面
            req.getRequestDispatcher("/user/login.jsp").forward(req, resp);
        } else {
            User loginUser = userService.login(new User(null, username, password, null, null));
            if (loginUser == null) {
                System.out.println("用户名[" + username + "] 的密码错误，无法登录！");
                // 把回显信息，保存到Request域中
                req.setAttribute("msg", "密码错误！");
                req.setAttribute("username", username);
                //  跳回注册页面
                req.getRequestDispatcher("/user/login.jsp").forward(req, resp);
            } else {
                // 登录 成功
                // 保存用户登录的信息到Session域中
                req.getSession().setAttribute("user", loginUser);
                //  跳到注册成功页面/user/login_success.jsp
                req.getRequestDispatcher("/user/login_success.jsp").forward(req, resp);
            }

        }

    }

    /**
     * 处理注册的功能
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 获取请求的参数，这里并不验证数据格式是否合法(已经在js中实现)，指查询数据是否在数据库中存在
        String username = req.getParameter("username");
        String password = DigestUtils.md5Hex(req.getParameter("password"));
        String email = req.getParameter("email");

        User user = WebUtils.copyParamToBean(req.getParameterMap(), new User());

        // 检查用户名是否可用
        if (userService.existsUsername(username)) {
            System.out.println("用户名[" + username + "]已存在！");
            // 把回显信息，保存到Request域中
            req.setAttribute("msg", "用户名已存在！");
            req.setAttribute("username", username);
            req.setAttribute("email", email);
            //  跳回注册页面
            // 服务端跳转
            //            request.getRequestDispatcher("/success.html").forward(request, response);
            // 客户端跳转
            //            response.sendRedirect("/j2ee_2/success.html");
            req.getRequestDispatcher("/user/regist.jsp").forward(req, resp);
        } else {
            //  调用Sservice保存到数据库
            userService.registUser(new User(null, username, password, email, "default_icon.png"));
            //  跳到注册成功页面/user/regist_success.jsp
            req.getRequestDispatcher("/user/regist_success.jsp").forward(req, resp);
        }

    }

    /**
     * 注销
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、销毁Session中用户登录的信息（或者销毁Session）
        req.getSession().invalidate();
//        2、重定向到首页（或登录页面）。
        resp.sendRedirect(req.getContextPath());
    }


    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        List<User> users = userService.queryUsers(pageNo, pageSize);
        int num = userService.queryForUserTotalCount();
        resp.setContentType("text/html;charset=utf-8");
        Vo<User> vo = new Vo<User>();
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(num);
        vo.setData(users);
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(vo));
        System.out.println(gson.toJson(vo));
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        user.setPassword(DigestUtils.md5Hex(user.getPassword()));
        userService.updateUser(user);
        resp.setHeader("Content-type", "text/html;charset=utf-8");
        resp.getWriter().print("success");

    }


    protected void uploadIcon(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (ServletFileUpload.isMultipartContent(req)) {
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            servletFileUpload.setHeaderEncoding("UTF-8");
            String icon = "";
            try {
                List<FileItem> list = servletFileUpload.parseRequest(req);
                for (FileItem fileItem : list) {
                    if (! fileItem.isFormField()) {
                        System.out.println("表单项的 name 属性值：" + fileItem.getFieldName());
                        System.out.println(fileItem.getContentType());
                        System.out.println("上传的文件名：" + fileItem.getName());
                        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
                        icon = date + "_" + fileItem.getName();
                        User user = (User) req.getSession().getAttribute("user");
                        user.setIcon(icon);
                        req.setAttribute("user", user);
//                        fileItem.write(new File("D:/CodeField/Web/JavaWeb04/web/static/images/icon/" + icon));
                        fileItem.write(new File(this.getServletContext().getRealPath("static/images/icon/") + icon));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            resp.setContentType("text/html;charset=utf-8");
            Map<String, String> map = new HashMap<>();
            map.put("msg", icon);
            Gson gson = new Gson();
            resp.getWriter().write(gson.toJson(map));
        }
    }
}
