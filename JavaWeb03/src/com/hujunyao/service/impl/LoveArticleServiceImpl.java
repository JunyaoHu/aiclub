package com.hujunyao.service.impl;

import com.hujunyao.dao.LoveArticleDao;
import com.hujunyao.dao.impl.LoveArticleDaoImpl;
import com.hujunyao.pojo.LoveArticle;
import com.hujunyao.service.LoveArticleService;

import java.util.List;

public class LoveArticleServiceImpl implements LoveArticleService {

    private LoveArticleDao loveArticleDao = new LoveArticleDaoImpl();

    @Override
    public void deleteLoveArticleById(Integer id) {
        loveArticleDao.deleteLoveArticleById(id);
    }


    @Override
    public LoveArticle queryLoveArticleById(Integer id) {
        return loveArticleDao.queryLoveArticleById(id);
    }

    @Override
    public List<LoveArticle> queryLoveArticles(int pageNo, int pageSize) {
        return loveArticleDao.queryLoveArticles(pageNo, pageSize);
    }

    @Override
    public int queryForLoveArticleTotalCount() {return loveArticleDao.queryForLoveArticleTotalCount(); }

    @Override
    public List<LoveArticle> queryLoveArticlesByUser(int user_id, int pageNo, int pageSize) {
        return loveArticleDao.queryLoveArticlesByUser(user_id, pageNo, pageSize);
    }


}
