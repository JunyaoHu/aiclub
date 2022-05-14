package com.hujunyao.pojo;

public class LoveDataset {
        private Integer loving_dataset_id ;
        private Integer user_id           ;
        private Integer dataset_id        ;
        private String  note              ;

    public LoveDataset() {
    }

    public LoveDataset(Integer loving_dataset_id, Integer user_id, Integer dataset_id, String note) {
        this.loving_dataset_id = loving_dataset_id;
        this.user_id = user_id;
        this.dataset_id = dataset_id;
        this.note = note;
    }

    public Integer getLoving_dataset_id() {
        return loving_dataset_id;
    }

    public void setLoving_dataset_id(Integer loving_dataset_id) {
        this.loving_dataset_id = loving_dataset_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getDataset_id() {
        return dataset_id;
    }

    public void setDataset_id(Integer dataset_id) {
        this.dataset_id = dataset_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
