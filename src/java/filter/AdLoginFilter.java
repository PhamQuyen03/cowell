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
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author tuong
 */
public class AdLoginFilter implements Filter {
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest rq = (HttpServletRequest) request;
        request.setCharacterEncoding("utf-8");
        String path = (rq.getRequestURI());
        if (path.startsWith("/quyen/resource") || path.startsWith("/resource")) {
            chain.doFilter(request, response);
            return;
        }

        Object obj = rq.getSession().getAttribute("userSession");
        if (obj == null) {
//            chain la 1 chuoi cac filter 
            System.out.println(path);
            if (path.startsWith("/quyen/loginAdmin")) {
                chain.doFilter(request, response);

            } else {
                RequestDispatcher patch = request.getRequestDispatcher("/WEB-INF/admin/views/login_Admin.jsp");
                patch.forward(request, response);
            }

        } else {
            User user = (User) obj;
            if (path.startsWith("/quyen/loginAdmin")) {
                HttpServletResponse resp = (HttpServletResponse) response;
                switch (user.getRole()) {
                    case 1:
                        resp.sendRedirect("admin");
                        break;
                    case 2:
                        resp.sendRedirect("manager");
                        break;
                    default:
                        resp.sendRedirect("supporter");
                        break;
                }
            } else {
                chain.doFilter(request, response);
            }

        }
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
