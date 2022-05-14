package com.hujunyao.dao;

import com.hujunyao.pojo.LoveDataset;

import java.util.List;

public interface LoveDatasetDao {

    public int deleteLoveDatasetById(Integer id);

    public LoveDataset queryLoveDatasetById(Integer id);

    public List<LoveDataset> queryLoveDatasets( int pageNo, int pageSize);

    Integer queryForLoveDatasetTotalCount();

    List<LoveDataset> queryLoveDatasetsByUser(int user_id, int pageNo, int pageSize);
}
