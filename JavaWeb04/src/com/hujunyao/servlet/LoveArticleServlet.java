package com.hujunyao.servlet;

import com.google.gson.Gson;
import com.hujunyao.pojo.Article;
import com.hujunyao.pojo.LoveArticle;
import com.hujunyao.pojo.Page;
import com.hujunyao.pojo.Vo;
import com.hujunyao.service.LoveArticleService;
import com.hujunyao.service.impl.LoveArticleServiceImpl;
import com.hujunyao.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.regex.Pattern;

public class LoveArticleServlet extends BaseServlet{

    private LoveArticleService loveArticleService = new LoveArticleServiceImpl();


    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("loving_article_id"), 0);
        System.out.println(id);
        loveArticleService.deleteLoveArticleById(id);
        resp.setHeader("Content-type", "text/html;charset=utf-8");
        resp.getWriter().print("success");
    }

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int user_id  = WebUtils.parseInt(req.getParameter("user_id"), -1);
        List<LoveArticle> loveArticles;
        if ( user_id == -1 ){
            System.out.println("---queryArticlesByAdmin---");
            loveArticles = loveArticleService.queryLoveArticles(pageNo, pageSize);
        } else {
            System.out.println("---queryArticlesByUser---");
            loveArticles = loveArticleService.queryLoveArticlesByUser(user_id, pageNo, pageSize);
        }
        int num = loveArticleService.queryForLoveArticleTotalCount();
        resp.setContentType("text/html;charset=utf-8");
        Vo<LoveArticle> vo = new Vo<LoveArticle>();
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(num);
        vo.setData(loveArticles);
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(vo));
//        System.out.println(gson.toJson(vo));
    }


}
