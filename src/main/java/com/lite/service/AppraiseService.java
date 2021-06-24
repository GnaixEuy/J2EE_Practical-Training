package com.lite.service;

import com.lite.bean.AppraiseBean;

import java.util.Date;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/24 00:27
 */
public interface AppraiseService {

    boolean addAp(String id, String val, Date date);

    List<AppraiseBean> queryAllAp();
}
