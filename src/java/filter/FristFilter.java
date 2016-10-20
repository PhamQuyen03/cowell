/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author tuong
 */
public class FristFilter implements Filter {

    ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("first filter");

        HttpServletRequest rq = (HttpServletRequest) request;
        Object obj = rq.getSession().getAttribute("model.user");
        if (obj == null) {
//            chain la 1 chuoi cac filter 
            String path = (rq.getRequestURI());
            System.out.println(path);
            if (path.startsWith("/quyen/Signin")) {
                chain.doFilter(request, response);
                
            } else {
                RequestDispatcher patch = request.getRequestDispatcher("/Login.jsp");
                patch.forward(request, response);
            }
            
        } else {
            RequestDispatcher patch = request.getRequestDispatcher("/index.html");
            patch.forward(request, response);
        }
    }

    @Override
    public void destroy() {

    }

}
