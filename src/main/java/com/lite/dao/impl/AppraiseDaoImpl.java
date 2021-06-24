package com.lite.dao.impl;

import com.lite.bean.AppraiseBean;
import com.lite.dao.AppraiseDAO;
import com.lite.utils.DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/24 00:15
 */
public class AppraiseDaoImpl implements AppraiseDAO {

    DBUtil dbUtil = new DBUtil();

    @Override
    public int addAppraise(AppraiseBean appraiseBean) {
        String sql = "INSERT INTO appraises (appraises_id,appraises_value,appraises_date) VALUES(?,?,?)";
        String apId = appraiseBean.getApId();
        String apVal = appraiseBean.getApVal();
        Date apDate = appraiseBean.getApDate();
        String date = new SimpleDateFormat("yyyy-MM-dd").format(apDate);
        return dbUtil.update(sql, apId, apVal, date);
    }

    @Override
    public List<AppraiseBean> queryAllAppraise() {
        String sql = "select * from appraises";
        List<AppraiseBean> list = new ArrayList<>();
        try {
            ResultSet resultSet = dbUtil.query(sql);
            AppraiseBean appraiseBean;
            while ( resultSet.next() ) {
                String appraisesId = resultSet.getString("appraises_id");
                String appraisesValue = resultSet.getString("appraises_value");
                java.sql.Date appraisesDate = resultSet.getDate("appraises_date");
                appraiseBean = new AppraiseBean(appraisesId, appraisesValue, appraisesDate);
                list.add(appraiseBean);
            }
        } catch ( SQLException throwables ) {
            throwables.printStackTrace();
        }
        return list;
    }
}
