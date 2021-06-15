package com.lite.listener;

import com.lite.utils.DBUtil;

import javax.servlet.ServletContext;
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
        try {
            int connectionNum = dbUtil.getConnectionNum();
            Connection connection;
            for ( int i = 0; i < connectionNum; i++ ) {
                connection = dbUtil.getConnection();
                connectionHashMap.put(connection, true);
            }
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        //交给全局应用程序共享对象来保管
        ServletContext application = sce.getServletContext();
        application.setAttribute("connectionHashMap", connectionHashMap);
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
        ServletContext application = sce.getServletContext();
        HashMap<Connection, Boolean> connectionHashMap = (HashMap<Connection, Boolean>) application.getAttribute("connectionHashMap");
        try {
            dbUtil.closeAllConnection(connectionHashMap);
        } catch ( Exception e ) {
            e.printStackTrace();
            System.out.println("清除错误");
        }
        connectionHashMap.clear();
    }
}
