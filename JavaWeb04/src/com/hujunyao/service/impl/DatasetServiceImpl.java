package com.hujunyao.service.impl;

import com.hujunyao.dao.DatasetDao;
import com.hujunyao.dao.impl.DatasetDaoImpl;
import com.hujunyao.pojo.Dataset;
import com.hujunyao.service.DatasetService;

import java.util.List;

public class DatasetServiceImpl implements DatasetService {

    private DatasetDao datasetDao = new DatasetDaoImpl();

    @Override
    public void addDataset(Dataset dataset) {
        datasetDao.addDataset(dataset);
    }

    @Override
    public void deleteDatasetById(Integer id) {
        datasetDao.deleteDatasetById(id);
    }

    @Override
    public void updateDataset(Dataset dataset) {
        datasetDao.updateDataset(dataset);
    }

    @Override
    public Dataset queryDatasetById(Integer id) {
        return datasetDao.queryDatasetById(id);
    }

    @Override
    public List<Dataset> queryDatasets(int pageNo, int pageSize) {
        return datasetDao.queryDatasets(pageNo, pageSize);
    }

    @Override
    public int queryForDatasetTotalCount() {return datasetDao.queryForDatasetTotalCount(); }

    @Override
    public List<Dataset> queryDatasetTitle(String search_title, int pageNo, int pageSize) {
        return datasetDao.queryDatasetTitle(search_title, pageNo, pageSize);

    }

    @Override
    public List<Dataset> queryDatasetsByUser(int user_id, int pageNo, int pageSize) {
        return datasetDao.queryDatasetsByUser(user_id, pageNo, pageSize);
    }


}
