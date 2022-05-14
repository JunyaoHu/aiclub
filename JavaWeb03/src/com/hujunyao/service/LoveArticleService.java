package com.hujunyao.service;

import com.hujunyao.pojo.LoveArticle;

import java.util.List;

public interface LoveArticleService {

    public void deleteLoveArticleById(Integer id);

    public LoveArticle queryLoveArticleById(Integer id);

    public List<LoveArticle> queryLoveArticles(int pageNo, int pageSize);

    public int queryForLoveArticleTotalCount();

    List<LoveArticle> queryLoveArticlesByUser(int user_id, int pageNo, int pageSize);
}
