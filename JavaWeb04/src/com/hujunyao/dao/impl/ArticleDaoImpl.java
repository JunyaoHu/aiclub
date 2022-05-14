package com.hujunyao.dao.impl;

import com.hujunyao.dao.ArticleDao;
import com.hujunyao.pojo.Article;

import java.util.List;

public class ArticleDaoImpl extends BaseDao implements ArticleDao {

    @Override
    public int addArticle(Article article) {
        String sql = "insert into article(user_id,publish_state,selected_state,category,tag,title,content,views,likes) values(?,?,?,?,?,?,?,?,?)";
        return update(sql, article.getUser_id(), article.getPublish_state(),article.getSelected_state(),article.getCategory(),article.getTag(),article.getTitle(), article.getContent(),0,0);
    }

    @Override
    public int deleteArticleById(Integer id) {
        String sql = "delete from article where article_id = ?";
        return update(sql, id);
    }

    @Override
    public int updateArticle(Article article) {
        String sql = "update article set title=?, publish_state=?, selected_state=?, category=? , tag=?, content=?  where article_id = ?";
        return update(sql, article.getTitle(), article.getPublish_state(), article.getSelected_state(), article.getCategory(), article.getTag(), article.getContent(), article.getArticle_id());
    }

    @Override
    public Article queryArticleById(Integer id) {
        String sql = "select * from article where article_id = ?";
        return queryForOne(Article.class, sql, id);
    }

    @Override
    public List<Article> queryArticleTitle(String search_title, int pageNo, int pageSize) {
        String sql = "select * from article where title like '%" + search_title + "%' limit ?,?";
        return queryForList(Article.class,sql, (pageNo - 1)*pageSize, pageSize);
    }

    @Override
    public List<Article> queryArticles(int pageNo, int pageSize) {
        String sql = "select * from article limit ?,?";
        return queryForList(Article.class,sql,(pageNo - 1)*pageSize,pageSize);
    }

    @Override
    public List<Article> queryArticlesByUser(int id, int pageNo, int pageSize) {
        String sql = "select * from article where user_id = ? limit ?,?";
        return queryForList(Article.class,sql,id, (pageNo - 1)*pageSize,pageSize);
    }

    @Override
    public Integer queryForArticleTotalCount() {
        String sql = "select count(*) from article";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }



}
