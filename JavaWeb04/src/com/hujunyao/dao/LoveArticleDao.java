package com.hujunyao.dao;

import com.hujunyao.pojo.LoveArticle;

import java.util.List;

public interface LoveArticleDao {

    public int deleteLoveArticleById(Integer id);

    public LoveArticle queryLoveArticleById(Integer id);

    public List<LoveArticle> queryLoveArticles( int pageNo, int pageSize);

    Integer queryForLoveArticleTotalCount();

    List<LoveArticle> queryLoveArticlesByUser(int user_id, int pageNo, int pageSize);
}
