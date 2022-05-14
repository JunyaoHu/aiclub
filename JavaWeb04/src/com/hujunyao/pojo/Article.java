package com.hujunyao.pojo;

public class Article {
    private Integer article_id;
    private Integer user_id;
    private String publish_state;
    private String selected_state;
    private String category;
    private String tag;
    private String title;
    private String content;
    private Integer views;
    private Integer likes;


    public Article() {
    }

    public Article(Integer article_id, Integer user_id, String publish_state, String selected_state, String category, String tag, String title, String content, Integer views, Integer likes) {
        this.article_id = article_id;
        this.user_id = user_id;
        this.publish_state = publish_state;
        this.selected_state = selected_state;
        this.category = category;
        this.tag = tag;
        this.title = title;
        this.content = content;
        this.views = views;
        this.likes = likes;
    }


    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getPublish_state() {
        return publish_state;
    }

    public void setPublish_state(String publish_state) {
        this.publish_state = publish_state;
    }

    public String getSelected_state() {
        return selected_state;
    }

    public void setSelected_state(String selected_state) {
        this.selected_state = selected_state;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public Integer getLikes() {
        return likes;
    }

    public void setLikes(Integer likes) {
        this.likes = likes;
    }


    @Override
    public String toString() {
        return "Article{" +
                "article_id=" + article_id +
                ", user_id=" + user_id +
                ", publish_state='" + publish_state + '\'' +
                ", selected_state='" + selected_state + '\'' +
                ", category='" + category + '\'' +
                ", tag='" + tag + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", views=" + views +
                ", likes=" + likes +
                '}';
    }
}
