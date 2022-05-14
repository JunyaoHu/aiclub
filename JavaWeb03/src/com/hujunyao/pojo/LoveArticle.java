package com.hujunyao.pojo;

public class LoveArticle {
        private Integer loving_article_id ;
        private Integer user_id           ;
        private Integer article_id        ;
        private String  note              ;

    public LoveArticle() {
    }

    public LoveArticle(Integer loving_article_id, Integer user_id, Integer article_id, String note) {
        this.loving_article_id = loving_article_id;
        this.user_id = user_id;
        this.article_id = article_id;
        this.note = note;
    }

    public Integer getLoving_article_id() {
        return loving_article_id;
    }

    public void setLoving_article_id(Integer loving_article_id) {
        this.loving_article_id = loving_article_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
