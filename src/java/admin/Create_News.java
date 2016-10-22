/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import dao.ConnectDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tuong
 */
public class Create_News extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String header = request.getParameter("header_create");
        String textArea = request.getParameter("textArea");
        String author = request.getParameter("author");
        String dateS = request.getParameter("dateStart");
        String date1[] = dateS.split("-");
        Date dateStart = new Date(Integer.parseInt(date1[0]) - 1900, Integer.parseInt(date1[1]) - 1, Integer.parseInt(date1[2]));
        String dateE = request.getParameter("dateEnd");
        String date2[] = dateE.split("-");
        Date dateEnd = new Date(Integer.parseInt(date2[0]) - 1900, Integer.parseInt(date2[1]) - 1, Integer.parseInt(date2[2]));
        int Status = Integer.parseInt(request.getParameter("Role_CreateNews"));

        try {
            Connection con = ConnectDB.Connected();
            Statement stt = con.createStatement();
            String sql = "INSERT INTO NEWS " + "VALUES (N'" + header + "', N'" + textArea + "', N'" + author + "', '" + dateStart + "', '" + dateEnd + "', " + Status + ")";
            stt.executeUpdate(sql);
            con.close();
            response.sendRedirect("supporter");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Create_News.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Create_News.class.getName()).log(Level.SEVERE, null, ex);
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
