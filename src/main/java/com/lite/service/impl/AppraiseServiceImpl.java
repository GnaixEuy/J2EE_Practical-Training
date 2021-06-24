package com.lite.service.impl;

import com.lite.bean.AppraiseBean;
import com.lite.dao.AppraiseDAO;
import com.lite.dao.impl.AppraiseDaoImpl;
import com.lite.service.AppraiseService;

import java.util.Date;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/24 00:29
 */
public class AppraiseServiceImpl implements AppraiseService {

    AppraiseDAO appraiseDAO = new AppraiseDaoImpl();

    @Override
    public boolean addAp(String id, String val, Date date) {
        AppraiseBean appraiseBean = new AppraiseBean(id, val, date);
        return appraiseDAO.addAppraise(appraiseBean) == 1;
    }

    @Override
    public List<AppraiseBean> queryAllAp() {
        return appraiseDAO.queryAllAppraise();
    }
}
