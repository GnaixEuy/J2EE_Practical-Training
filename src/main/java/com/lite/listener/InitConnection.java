package com.lite.listener;

import com.lite.utils.DBUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Connection;
import java.util.HashMap;

/**
 * 利用监听器，在服务器启动时初始化多个connection放入Application的connectionmaHashMap中
 *
 * @author GnaixEuy
 * @date 2021/06/15
 */
public class InitConnection implements ServletContextListener {

    DBUtil dbUtil = new DBUtil();

    /**
     * 在服务器启动时初始化connectionHashMap，注意为了保证我们系统效率请使用connectionHashMap获取connection来进行对数据库对操作
     *
     * @author GnaixEuy
     * @date 2021/06/15
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // true为当前connection可用状态，false为已经被占用
        HashMap<Connection, Boolean> connectionHashMap = new HashMap<>(dbUtil.getConnectionNum());
        HashMap<Connection, Boolean> safeConnectionHashMap = new HashMap<>(dbUtil.getConnectionNum());
        try {
            int connectionNum = dbUtil.getConnectionNum();
            Connection connection;
            for ( int i = 0; i < connectionNum; i++ ) {
                connection = dbUtil.getConnection();
                connectionHashMap.put(connection, true);
            }
            for ( int i = 0; i < connectionNum; i++ ) {
                connection = dbUtil.getConnection();
                connection.setAutoCommit(false);
                safeConnectionHashMap.put(connection, true);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        DBUtil.setConnectionHashMap(connectionHashMap);
        DBUtil.setSafeConnectionHashMap(safeConnectionHashMap);
    }

    /**
     * 服务器关闭时释放所有connection连接
     *
     * @param sce
     * @author GnaixEuy
     */
    @Override
    @SuppressWarnings("unchecked")
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            dbUtil.closeAllConnection();
        } catch ( Exception e ) {
            e.printStackTrace();
            System.out.println("清除错误");
        }
    }
}
