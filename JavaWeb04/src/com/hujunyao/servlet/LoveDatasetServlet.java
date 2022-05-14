package com.hujunyao.servlet;

import com.google.gson.Gson;
import com.hujunyao.pojo.Article;
import com.hujunyao.pojo.LoveDataset;
import com.hujunyao.pojo.Page;
import com.hujunyao.pojo.Vo;
import com.hujunyao.service.LoveDatasetService;
import com.hujunyao.service.impl.LoveDatasetServiceImpl;
import com.hujunyao.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class LoveDatasetServlet extends BaseServlet{

    private LoveDatasetService loveDatasetService = new LoveDatasetServiceImpl();
    

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("loving_dataset_id"), 0);
        System.out.println(id);
        loveDatasetService.deleteLoveDatasetById(id);
        resp.setHeader("Content-type", "text/html;charset=utf-8");
        resp.getWriter().print("success");
    }

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int user_id  = WebUtils.parseInt(req.getParameter("user_id"), -1);
        List<LoveDataset> loveDatasets;
        if ( user_id == -1 ){
            System.out.println("---queryLoveDatasetsByAdmin---");
            loveDatasets = loveDatasetService.queryLoveDatasets(pageNo, pageSize);
        } else {
            System.out.println("---queryLoveArticlesByUser---");
            loveDatasets = loveDatasetService.queryLoveDatasetsByUser(user_id, pageNo, pageSize);
        }
        int num = loveDatasetService.queryForLoveDatasetTotalCount();
        resp.setContentType("text/html;charset=utf-8");
        Vo<LoveDataset> vo = new Vo<LoveDataset>();
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(num);
        vo.setData(loveDatasets);
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(vo));
//        System.out.println(gson.toJson(vo));
    }

    
}
