package com.hujunyao.servlet;

import com.google.gson.Gson;
import com.hujunyao.pojo.Article;
import com.hujunyao.pojo.Dataset;
import com.hujunyao.pojo.Page;
import com.hujunyao.pojo.Vo;
import com.hujunyao.service.DatasetService;
import com.hujunyao.service.impl.DatasetServiceImpl;
import com.hujunyao.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.regex.Pattern;

public class DatasetServlet extends BaseServlet{

    private DatasetService datasetService = new DatasetServiceImpl();

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // tag标签列表转sql字符串
        Map<String, String> tagmap = new HashMap<String, String>();
        tagmap.put("tag[mbjc]","目标检测");
        tagmap.put("tag[yyfg]","语义分割");
        tagmap.put("tag[txfl]","图像分类");
        tagmap.put("tag[fgqy]","风格迁移");
        tagmap.put("tag[znwd]","智能问答");
        tagmap.put("tag[sztp]","知识图谱");
        tagmap.put("tag[wbfy]","文本翻译");

        Map<String,String[]> map = req.getParameterMap();
        Set<String> keyset = map.keySet();
        StringBuilder tags = new StringBuilder("");
        for (String name: keyset) {
            if (Pattern.matches("^tag\\[[a-z]*\\]$", name)) {
                tags.append(tagmap.get(name));
                tags.append(",");
            }
        }
        tags.deleteCharAt(tags.length()-1);

        Map<String, String> edit_add_map = new HashMap<String, String>();
        edit_add_map.put("title"   , req.getParameter("title"));
        edit_add_map.put("category", req.getParameter("category"));
        edit_add_map.put("tag"     , String.valueOf(tags));
        edit_add_map.put("intro" , req.getParameter("intro"));
        edit_add_map.put("user_id" , req.getParameter("user_id"));
        edit_add_map.put("link" , req.getParameter("link"));
        edit_add_map.put("publish_state" , "已发布");
        edit_add_map.put("selected_state" , "");
        edit_add_map.put("views", "0");
        edit_add_map.put("likes", "0");

        Dataset dataset = WebUtils.copyParamToBean(edit_add_map,new Dataset());
//        System.out.println(dataset);
        datasetService.addDataset(dataset);

        resp.setHeader("Content-type", "text/html;charset=utf-8");
        resp.getWriter().print("success");
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("dataset_id"), 0);
        System.out.println(id);
        datasetService.deleteDatasetById(id);
        resp.setHeader("Content-type", "text/html;charset=utf-8");
        resp.getWriter().print("success");
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // tag标签列表转sql字符串
        Map<String, String> tagmap = new HashMap<String, String>();
        tagmap.put("tag[mbjc]","目标检测");
        tagmap.put("tag[yyfg]","语义分割");
        tagmap.put("tag[txfl]","图像分类");
        tagmap.put("tag[fgqy]","风格迁移");
        tagmap.put("tag[znwd]","智能问答");
        tagmap.put("tag[sztp]","知识图谱");
        tagmap.put("tag[wbfy]","文本翻译");


        Map<String,String[]> map = req.getParameterMap();
        Set<String> keyset = map.keySet();
        StringBuilder tags = new StringBuilder("");
        for (String name: keyset) {
            System.out.println("name: " + name + " :  "+ req.getParameter(name));
            if (Pattern.matches("^tag\\[[a-z]*\\]$", name)) {
                tags.append(tagmap.get(name));
                tags.append(",");
            }
        }

        String tag = String.valueOf(tags);

        if (!Objects.equals(tag, "")) {
            tag = tag.substring(0, tag.length() - 1);
        }

        String publish_state = "";
        if (Objects.equals(req.getParameter("publish_state"), "0")) {
            publish_state = "未发布";
        } else {
            publish_state = "已发布";
        }

        String selected_state = "";

        if (Objects.equals(req.getParameter("selected_state"), "on")) {
            selected_state = "精选";
        } else {
            selected_state = "";
        }

        Map<String, String> edit_update_map = new HashMap<String, String>();
        edit_update_map.put("title"   , req.getParameter("title"));
        edit_update_map.put("publish_state" , publish_state);
        edit_update_map.put("selected_state" , selected_state);
        edit_update_map.put("category", req.getParameter("category"));
        edit_update_map.put("tag"     , tag);
        edit_update_map.put("intro" , req.getParameter("intro"));
        edit_update_map.put("link" , req.getParameter("link"));
        edit_update_map.put("dataset_id" , req.getParameter("dataset_id"));

        Dataset dataset = WebUtils.copyParamToBean(edit_update_map,new Dataset());
//        System.out.println(dataset);
        datasetService.updateDataset(dataset);

        resp.setHeader("Content-type", "text/html;charset=utf-8");
        resp.getWriter().print("success");

    }

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int user_id  = WebUtils.parseInt(req.getParameter("user_id"), -1);
        List<Dataset> datasets;
        if ( user_id == -1 ){
            System.out.println("---queryDatasetsByAdmin---");
            datasets = datasetService.queryDatasets(pageNo, pageSize);
        } else {
            System.out.println("---queryDatasetsByUser---");
            datasets = datasetService.queryDatasetsByUser(user_id, pageNo, pageSize);
        }
        int num = datasetService.queryForDatasetTotalCount();
        resp.setContentType("text/html;charset=utf-8");
        Vo<Dataset> vo = new Vo<Dataset>();
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(num);
        vo.setData(datasets);
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(vo));
//        System.out.println(gson.toJson(vo));
    }


    protected void queryDatasetTitle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        String search_title = req.getParameter("search_title");
        System.out.println("queryDatasetTitle : " + search_title);
        List<Dataset> datasets = datasetService.queryDatasetTitle(search_title, pageNo, pageSize);
        int num = datasetService.queryForDatasetTotalCount();
        resp.setContentType("text/html;charset=utf-8");
        Vo<Dataset> vo = new Vo<Dataset>();
        vo.setCode(0);
        vo.setMsg("success");
        vo.setCount(num);
        vo.setData(datasets);
        Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(vo));
//        System.out.println(gson.toJson(vo));
    }
}
