package com.hujunyao.dao;

import com.hujunyao.pojo.Article;

import java.util.List;

public interface ArticleDao {

    public int addArticle(Article article);

    public int deleteArticleById(Integer id);


    public int updateArticle(Article article);

    public Article queryArticleById(Integer id);

    public List<Article> queryArticleTitle(String search_title, int pageNo, int pageSize);

    public List<Article> queryArticles( int pageNo, int pageSize);

    Integer queryForArticleTotalCount();

    List<Article> queryArticlesByUser(int id, int pageNo, int pageSize);
}
