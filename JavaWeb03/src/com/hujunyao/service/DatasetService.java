package com.hujunyao.service;

import com.hujunyao.pojo.Dataset;

import java.util.List;

public interface DatasetService {

    public void addDataset(Dataset dataset);

    public void deleteDatasetById(Integer id);

    public void updateDataset(Dataset dataset);

    public Dataset queryDatasetById(Integer id);

    public List<Dataset> queryDatasets(int pageNo, int pageSize);

    public int queryForDatasetTotalCount();

    List<Dataset> queryDatasetTitle(String search_title, int pageNo, int pageSize);

    List<Dataset> queryDatasetsByUser(int user_id, int pageNo, int pageSize);
}
