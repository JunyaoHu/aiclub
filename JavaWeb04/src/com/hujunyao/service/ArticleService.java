package com.hujunyao.service;

import com.hujunyao.pojo.Article;

import java.util.List;

public interface ArticleService {

    public void addArticle(Article article);

    public void deleteArticleById(Integer id);

    public void updateArticle(Article article);

    public Article queryArticleById(Integer id);

    public List<Article> queryArticles(int pageNo, int pageSize);

    public int queryForArticleTotalCount();

    public List<Article> queryArticleTitle(String search_title, int pageNo, int pageSize);

    List<Article> queryArticlesByUser(int pageNo, int pageSize, int size);
}
