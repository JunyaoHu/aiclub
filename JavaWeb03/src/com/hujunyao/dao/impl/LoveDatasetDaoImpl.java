package com.hujunyao.dao.impl;

import com.hujunyao.dao.LoveDatasetDao;
import com.hujunyao.pojo.LoveDataset;

import java.util.List;

public class LoveDatasetDaoImpl extends BaseDao implements LoveDatasetDao {
    
    @Override
    public int deleteLoveDatasetById(Integer id) {
        String sql = "delete from loving_dataset where loving_dataset_id = ?";
        return update(sql, id);
    }

    @Override
    public LoveDataset queryLoveDatasetById(Integer id) {
        String sql = "select * from loving_dataset where loving_dataset_id = ?";
        return queryForOne(LoveDataset.class, sql, id);
    }


    @Override
    public List<LoveDataset> queryLoveDatasets(int pageNo, int pageSize) {
        String sql = "select * from loving_dataset limit ?,?";
        return queryForList(LoveDataset.class,sql,(pageNo - 1)*pageSize,pageSize);
    }


    @Override
    public Integer queryForLoveDatasetTotalCount() {
        String sql = "select count(*) from loving_dataset";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<LoveDataset> queryLoveDatasetsByUser(int user_id, int pageNo, int pageSize) {
        String sql = "select * from loving_dataset where user_id = ? limit ?,?";
        return queryForList(LoveDataset.class,sql,user_id, (pageNo - 1)*pageSize,pageSize);
    }

}
