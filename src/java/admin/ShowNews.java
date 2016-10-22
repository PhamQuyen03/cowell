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
import model.News;

/**
 *
 * @author tuong
 */
public class ShowNews extends HttpServlet {

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
        try {
            Connection con = ConnectDB.Connected();
            Statement stt = con.createStatement();
            String sql = "SELECT * FROM NEWS";
            ResultSet rs = stt.executeQuery(sql);
            List<News> ns = new ArrayList<>();
            while (rs.next()) {
                String header = rs.getString("HEADER");
                String content = rs.getString("CONTENTS");
                String author = rs.getString("AUTHOR");
                Date dateS = rs.getDate("DATE_START");
                Date dateE = rs.getDate("DATE_END");
                int status = rs.getInt("STATUS");
                int id = rs.getInt("ID");
                News n = new News(id, header, content, author, dateS, dateE, status);
                ns.add(n);
            }
            con.close();
            request.setAttribute("news", ns);
            RequestDispatcher patcher = request.getRequestDispatcher("/WEB-INF/admin/views/view_Supporter.jsp");
            patcher.forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ShowNews.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ShowNews.class.getName()).log(Level.SEVERE, null, ex);
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
