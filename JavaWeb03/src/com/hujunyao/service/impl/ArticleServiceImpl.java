package com.hujunyao.service.impl;

import com.hujunyao.dao.ArticleDao;
import com.hujunyao.dao.impl.ArticleDaoImpl;
import com.hujunyao.pojo.Article;
import com.hujunyao.pojo.Page;
import com.hujunyao.service.ArticleService;

import java.util.List;

public class ArticleServiceImpl implements ArticleService {

    private ArticleDao articleDao = new ArticleDaoImpl();

    @Override
    public void addArticle(Article article) {
        articleDao.addArticle(article);
    }

    @Override
    public void deleteArticleById(Integer id) {
        articleDao.deleteArticleById(id);
    }

    @Override
    public void updateArticle(Article article) {
        articleDao.updateArticle(article);
    }

    @Override
    public Article queryArticleById(Integer id) {
        return articleDao.queryArticleById(id);
    }

    @Override
    public List<Article> queryArticles(int pageNo, int pageSize) {
        return articleDao.queryArticles(pageNo, pageSize);
    }

    @Override
    public List<Article> queryArticlesByUser(int id, int pageNo, int pageSize) {
        return articleDao.queryArticlesByUser(id, pageNo, pageSize);
    }
    @Override
    public int queryForArticleTotalCount() {return articleDao.queryForArticleTotalCount(); }

    @Override
    public List<Article> queryArticleTitle(String search_title, int pageNo, int pageSize) {
        return articleDao.queryArticleTitle(search_title, pageNo, pageSize);
    }



}
