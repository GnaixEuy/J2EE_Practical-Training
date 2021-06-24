package com.lite.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author GnaixEuy
 * @date 2021/6/16 09:20
 */
public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) request).getSession();
        Object user = session.getAttribute("user");
        if ( user == null ) {
            System.out.println("拦截到非法访问");
            request.setAttribute("msg", "管理员信息不存在");
            request.getRequestDispatcher("view/msg.jsp").forward(request, response);

        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }

}
