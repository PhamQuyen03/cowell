/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import dao.ConnectDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author tuong
 */
public class Login_Ad extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("emailAD");
        String password = request.getParameter("passwordAD");
        User user = new User();
        try {
            Connection Con = ConnectDB.Connected();
            String sql = "select * from USERS where usr_name='" + email + "' and usr_password='" + password + "'";
            Statement stt = Con.createStatement();
            ResultSet rs = stt.executeQuery(sql);
            while (rs.next()) {
                String name = rs.getString("USR_NAME");
                String pass = rs.getString("USR_PASSWORD");
                int role = rs.getInt("ROLE");
                user.setName(name);
                user.setPassword(pass);
                user.setRole(role);
            }
            Con.close();
            RequestDispatcher path = null;
            if(email == null | password == null | "".equals(email) | "".equals(password)) {
                path = request.getRequestDispatcher("/WEB-INF/admin/views/login_Admin.jsp");
                path.forward(request, response);
            } else if(user != null) {
                request.getSession().setAttribute("userSession", user);
                
                if(user.getRole() == 1) {
                    response.sendRedirect("admin");
                } else if(user.getRole() == 2) {
                    response.sendRedirect("manager");
                } else {
                    response.sendRedirect("supporter");
                }
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login_Ad.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}