package com.hujunyao.pojo;


public class Dataset {
    private Integer dataset_id;
    private Integer user_id;
    private String publish_state;
    private String selected_state;
    private String category;
    private String tag;
    private String title;
    private String intro;
    private String link;
    private Integer views;
    private Integer likes;



    public Dataset() {
    }

    public Dataset(Integer dataset_id, Integer user_id, String publish_state, String selected_state, String category, String tag, String title, String intro, String link, Integer views, Integer likes) {
        this.dataset_id = dataset_id;
        this.user_id = user_id;
        this.publish_state = publish_state;
        this.selected_state = selected_state;
        this.category = category;
        this.tag = tag;
        this.title = title;
        this.intro = intro;
        this.link = link;
        this.views = views;
        this.likes = likes;
    }


    public Integer getDataset_id() {
        return dataset_id;
    }

    public void setDataset_id(Integer dataset_id) {
        this.dataset_id = dataset_id;
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

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
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
}
