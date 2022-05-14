package com.hujunyao.test;

import com.hujunyao.pojo.Article;
import com.hujunyao.service.ArticleService;
import com.hujunyao.service.impl.ArticleServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

public class ArticleServiceTest {

    private ArticleService articleService = new ArticleServiceImpl();

    @Test
    public void addArticle() {
        String tag = "GAN,ViT";
        articleService.addArticle(new Article(null, null,"已发布", null, "CV", tag, "title", "test", null, null));
    }

    @Test
    public void deleteArticleById() {
        articleService.deleteArticleById(22);
    }

    @Test
    public void updateArticle() {
        java.util.Date date = new Date();
        Timestamp timestamp = new Timestamp(date.getTime());
        String tag ="人工智能, 222";
        articleService.updateArticle(new Article(12, null,"已发布", null, "CV", tag, "这个好欸（改）", "test(edited)", 200, null));
    }

    @Test
    public void queryArticleById() {
        System.out.println(articleService.queryArticleById(2));
    }

    @Test
    public void queryArticles(int PageNo, int PageSize) {
        for (Article queryArticle : articleService.queryArticles(1,10)) {
            System.out.println(queryArticle);
        }
    }
//
//    @Test
//    public void page(){
//        System.out.println(articleService.page(1, Page.PAGE_SIZE ));
//    }
//    @Test
//    public void pageByPrice(){
//        System.out.println(articleService.pageByPrice(1, Page.PAGE_SIZE,10,50 ));
//    }
}