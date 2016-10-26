package com.baibin.maven.core.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ibm on 2016/10/10.
 */
public class DisableUrlSessionFilter implements Filter {

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        System.out.println(httpServletRequest.getRequestURL());
        if (!(request instanceof HttpServletRequest)) {

            chain.doFilter(request, response);
            return;
        }
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        if (httpRequest.isRequestedSessionIdFromURL()) {
            HttpSession session = httpRequest.getSession();
            if (session != null)
                session.invalidate();
        }
        HttpServletResponseWrapper wrappedResponse = new HttpServletResponseWrapper(
                httpResponse) {
            public String encodeRedirectUrl(String url) {
                System.out.println(1);
                System.out.println(url);
                return url;
            }

            public String encodeRedirectURL(String url) {
                System.out.println(2);
                System.out.println(url);
                return url;
            }

            public String encodeUrl(String url) {
                System.out.println(3);
                System.out.println(url);
                return url;
            }

            public String encodeURL(String url) {
                System.out.println(4);
                System.out.println(url);
                return url;
            }
        };
        chain.doFilter(request, wrappedResponse);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }


}