package com.hujunyao.dao;

import com.hujunyao.pojo.Dataset;

import java.util.List;

public interface DatasetDao {

    public int addDataset(Dataset dataset);

    public int deleteDatasetById(Integer id);


    public int updateDataset(Dataset dataset);

    public Dataset queryDatasetById(Integer id);

    public List<Dataset> queryDatasets(int pageNo, int pageSize);

    Integer queryForDatasetTotalCount();

    List<Dataset> queryDatasetTitle(String search_title, int pageNo, int pageSize);

    List<Dataset> queryDatasetsByUser(int user_id, int pageNo, int pageSize);
}
