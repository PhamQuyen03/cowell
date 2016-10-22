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
import java.util.ArrayList;
import java.util.List;
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
public class Edit_User extends HttpServlet {

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
        int id = Integer.parseInt(request.getParameter("id"));
        User user = new User();
        try {
            Connection Con = ConnectDB.Connected();
            Statement stmt = Con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM USERS WHERE ID = " + id);
            while (rs.next()) {
                String name = rs.getString("USR_NAME");
                String pass = rs.getString("USR_PASSWORD");
                int role = rs.getInt("ROLE");
                user = new User(id, name, pass, role);
            }
            Con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Edit_User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_User.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("edit_user", user);
        RequestDispatcher patcher = request.getRequestDispatcher("/WEB-INF/admin/views/Edit_User.jsp");
        patcher.forward(request, response);
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
        int id = Integer.parseInt(request.getParameter("userid"));
       
        String name = request.getParameter("Username_edit");
        String pass = request.getParameter("Password_edit");
        int role = Integer.parseInt(request.getParameter("Role_edit"));
        try {
            Connection Con = ConnectDB.Connected();
            Statement stmt = Con.createStatement();
            int rs = stmt.executeUpdate("UPDATE USERS " +"SET USR_NAME = N'" +name +"', USR_PASSWORD = N'"+ pass+"', ROLE = "+ role +" WHERE ID = "+ id);
            Con.close();
            response.sendRedirect("/quyen/admin");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Edit_User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_User.class.getName()).log(Level.SEVERE, null, ex);
        }
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
