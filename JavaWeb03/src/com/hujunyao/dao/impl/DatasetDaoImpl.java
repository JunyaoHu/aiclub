package com.hujunyao.dao.impl;

import com.hujunyao.dao.DatasetDao;
import com.hujunyao.pojo.Dataset;

import java.util.List;

public class DatasetDaoImpl extends BaseDao implements DatasetDao {

    @Override
    public int addDataset(Dataset dataset) {
        String sql = "insert into dataset(user_id,publish_state,selected_state,category,tag,title,intro,link,views,likes) values(?,?,?,?,?,?,?,?,?,?)";
        return update(sql, dataset.getUser_id(), dataset.getPublish_state(),dataset.getSelected_state(),dataset.getCategory(),dataset.getTag(),dataset.getTitle(), dataset.getIntro(), dataset.getLink(), 0,0);

    }

    @Override
    public int deleteDatasetById(Integer id) {
        String sql = "delete from dataset where dataset_id = ?";
        return update(sql, id);
    }

    @Override
    public int updateDataset(Dataset dataset) {
        String sql = "update dataset set title=?, publish_state=?, selected_state=?, category=? , tag=?, intro=?, link=?  where dataset_id = ?";
        return update(sql, dataset.getTitle(), dataset.getPublish_state(), dataset.getSelected_state(), dataset.getCategory(), dataset.getTag(), dataset.getIntro(),dataset.getLink(), dataset.getDataset_id());
    }

    @Override
    public Dataset queryDatasetById(Integer id) {
        String sql = "select * from dataset where dataset_id = ?";
        return queryForOne(Dataset.class, sql, id);
    }

    @Override
    public List<Dataset> queryDatasets(int pageNo, int pageSize) {
        String sql = "select * from dataset limit ?,?";
        return queryForList(Dataset.class,sql,(pageNo - 1)*pageSize,pageSize);
    }


    @Override
    public Integer queryForDatasetTotalCount() {
        String sql = "select count(*) from dataset";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Dataset> queryDatasetTitle(String search_title, int pageNo, int pageSize) {
        String sql = "select * from dataset where title like '%" + search_title + "%' limit ?,?";
        return queryForList(Dataset.class,sql, (pageNo - 1)*pageSize, pageSize);
    }

    @Override
    public List<Dataset> queryDatasetsByUser(int user_id, int pageNo, int pageSize) {
        String sql = "select * from dataset where user_id = ? limit ?,?";
        return queryForList(Dataset.class,sql,user_id, (pageNo - 1)*pageSize, pageSize);
    }


}
