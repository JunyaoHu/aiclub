package com.hujunyao.filter;

import com.hujunyao.pojo.User;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest,ServletResponse servletResponse, FilterChain filterChain)throws IOException, ServletException {
        System.out.println("管理员权限过滤器开始执行过滤");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        String currPath = request.getRequestURI(); //当前请求的URL
        System.out.println("当前URL为：" + currPath);
        User user = (User) session.getAttribute("user");
        if (user == null) {
            System.out.println("还没有登录");
            response.sendRedirect("../../user/login_please.jsp");
        } else {
            Integer id = user.getUser_id();
            System.out.println("当前session对象中user对象的ID值为：" + id);
            if (id != 1) {
                System.out.println("不能以普通用户进入管理员，跳转到用户界面");
                response.sendRedirect("../user/home.jsp");
            } else {
                System.out.println("管理员已登录");
                //response.sendRedirect("admin_home.jsp");
            }
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
