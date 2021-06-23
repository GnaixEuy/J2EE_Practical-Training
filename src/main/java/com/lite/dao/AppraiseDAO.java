package com.lite.dao;

import com.lite.bean.AppraiseBean;

import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/24 00:14
 */
public interface AppraiseDAO {

    int addAppraise(AppraiseBean appraiseBean);

    List<AppraiseBean> queryAllAppraise();

}
