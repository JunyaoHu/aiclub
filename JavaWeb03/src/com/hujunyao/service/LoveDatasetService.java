package com.hujunyao.service;

import com.hujunyao.pojo.LoveDataset;

import java.util.List;

public interface LoveDatasetService {

    public void deleteLoveDatasetById(Integer id);

    public LoveDataset queryLoveDatasetById(Integer id);

    public List<LoveDataset> queryLoveDatasets(int pageNo, int pageSize);

    public int queryForLoveDatasetTotalCount();

    List<LoveDataset> queryLoveDatasetsByUser(int user_id, int pageNo, int pageSize);
}
