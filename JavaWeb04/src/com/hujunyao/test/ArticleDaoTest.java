package com.hujunyao.test;

import com.hujunyao.dao.ArticleDao;
import com.hujunyao.dao.impl.ArticleDaoImpl;
import com.hujunyao.pojo.Article;
import org.junit.Test;

import java.sql.Timestamp;
import java.util.Date;

public class ArticleDaoTest {

    private ArticleDao articleDao = new ArticleDaoImpl();

    @Test
    public void addArticle() {
        java.util.Date date = new Date();
        Timestamp timestamp = new Timestamp(date.getTime());
        String tag ="GAN,ViT";
        articleDao.addArticle(new Article(null, null, "已发布", null, "CV", tag, "title", "test",  null, null));
    }

    @Test
    public void deleteArticleById() {
        articleDao.deleteArticleById(21);
    }

    @Test
    public void updateArticle() {
        java.util.Date date = new Date();
        Timestamp timestamp = new Timestamp(date.getTime());
        String tag ="人工智能,222";
        articleDao.updateArticle(new Article(1, null,"已发布", null, "CV", tag, "这个好欸（改）", "test(edited)",  200, null));
    }

    @Test
    public void queryArticleById() {
        System.out.println( articleDao.queryArticleById(1) );
    }

    @Test
    public void queryArticles() {
        for (Article queryArticle : articleDao.queryArticles(1,10)) {
            System.out.println(queryArticle);
        }
    }

    @Test
    public void queryForArticleTotalCount() {
        System.out.println( articleDao.queryForArticleTotalCount() );
    }

    @Test
    public void queryArticleTitle() {
        System.out.println( articleDao.queryArticleTitle("test", 1 ,10));
    }

//    @Test
//    public void queryForPageTotalCountByPrice() {
//        System.out.println( articleDao.queryForPageTotalCountByPrice(10, 50) );
//    }

//    @Test
//    public void queryForPageItems() {
//        for (Article article : articleDao.queryForPageItems(8, Page.PAGE_SIZE)) {
//            System.out.println(article);
//        }
//    }
//    @Test
//    public void queryForPageItemsByPrice() {
//        for (Article article : articleDao.queryForPageItemsByPrice(0, Page.PAGE_SIZE,10,50)) {
//            System.out.println(article);
//        }
//    }

}