package com.hujunyao.service.impl;

import com.hujunyao.dao.LoveDatasetDao;
import com.hujunyao.dao.impl.LoveDatasetDaoImpl;
import com.hujunyao.pojo.LoveDataset;
import com.hujunyao.service.LoveDatasetService;

import java.util.List;

public class LoveDatasetServiceImpl implements LoveDatasetService {

    private LoveDatasetDao loveDatasetDao = new LoveDatasetDaoImpl();

    @Override
    public void deleteLoveDatasetById(Integer id) {
        loveDatasetDao.deleteLoveDatasetById(id);
    }
    

    @Override
    public LoveDataset queryLoveDatasetById(Integer id) {
        return loveDatasetDao.queryLoveDatasetById(id);
    }

    @Override
    public List<LoveDataset> queryLoveDatasets(int pageNo, int pageSize) {
        return loveDatasetDao.queryLoveDatasets(pageNo, pageSize);
    }

    @Override
    public int queryForLoveDatasetTotalCount() {
        return loveDatasetDao.queryForLoveDatasetTotalCount();
    }

    @Override
    public List<LoveDataset> queryLoveDatasetsByUser(int user_id, int pageNo, int pageSize) {
        return loveDatasetDao.queryLoveDatasetsByUser(user_id, pageNo, pageSize);
    }


}
