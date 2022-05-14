package com.hujunyao.dao.impl;

import com.hujunyao.dao.LoveArticleDao;
import com.hujunyao.pojo.LoveArticle;

import java.util.List;

public class LoveArticleDaoImpl extends BaseDao implements LoveArticleDao {

    @Override
    public int deleteLoveArticleById(Integer id) {
        String sql = "delete from loving_article where loving_article_id = ?";
        return update(sql, id);
    }

    @Override
    public LoveArticle queryLoveArticleById(Integer id) {
        String sql = "select * from loving_article where loving_article_id = ?";
        return queryForOne(LoveArticle.class, sql, id);
    }


    @Override
    public List<LoveArticle> queryLoveArticles(int pageNo, int pageSize) {
        String sql = "select * from loving_article limit ?,?";
        return queryForList(LoveArticle.class,sql,(pageNo - 1)*pageSize,pageSize);
    }


    @Override
    public Integer queryForLoveArticleTotalCount() {
        String sql = "select count(*) from loving_article";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<LoveArticle> queryLoveArticlesByUser(int user_id, int pageNo, int pageSize) {
        String sql = "select * from loving_article where user_id = ? limit ?,?";
        return queryForList(LoveArticle.class,sql,user_id, (pageNo - 1)*pageSize,pageSize);
    }

}
