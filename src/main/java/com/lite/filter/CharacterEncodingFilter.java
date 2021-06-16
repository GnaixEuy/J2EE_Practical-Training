package com.lite.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * @author GnaixEuy
 * @date 2021/6/16 08:58
 */
public class CharacterEncodingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("字符集过滤启动");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
        System.out.println("字符集过滤启动");
    }
}
