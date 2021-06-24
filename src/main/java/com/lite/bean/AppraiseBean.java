package com.lite.bean;

import java.util.Date;

/**
 * @author GnaixEuy
 * @date 2021/6/24 00:11
 */
public class AppraiseBean {
    String apId;
    String apVal;
    Date apDate;

    public AppraiseBean(String apId, String apVal, Date apDate) {
        this.apId = apId;
        this.apVal = apVal;
        this.apDate = apDate;
    }

    public String getApId() {
        return apId;
    }

    public void setApId(String apId) {
        this.apId = apId;
    }

    public String getApVal() {
        return apVal;
    }

    public void setApVal(String apVal) {
        this.apVal = apVal;
    }

    public Date getApDate() {
        return apDate;
    }

    public void setApDate(Date apDate) {
        this.apDate = apDate;
    }
}
