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
public class Edit_News extends HttpServlet {

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
        String id = request.getParameter("id");
        News ns = null;
        try {
            Connection con = ConnectDB.Connected();
            Statement stt = con.createStatement();
            ResultSet rs = stt.executeQuery("SELECT * FROM News WHERE ID = " + id);
            while (rs.next()) {
                int id_news = rs.getInt("ID");
                String header = rs.getString("HEADER");
                String content = rs.getString("CONTENTS");
                String author = rs.getString("AUTHOR");
                Date dateS = rs.getDate("DATE_START");
                Date dateE = rs.getDate("DATE_END");
                int status = rs.getInt("STATUS");
                ns = new News(id_news, header, content, author, dateS, dateE, status);
            }
            con.close();
            request.setAttribute("edit_news", ns);
            RequestDispatcher patcher = request.getRequestDispatcher("/WEB-INF/admin/views/edit_News.jsp");
            patcher.forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Edit_News.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_News.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        int id = Integer.parseInt(request.getParameter("edit_newsId"));
        String header = request.getParameter("header_edit");
        String textArea = request.getParameter("edit_textArea");
        String author = request.getParameter("edit_author");
        String dateS = request.getParameter("edit_dateStart");
        String date1[] = dateS.split("-");
        Date dateStart = new Date(Integer.parseInt(date1[0]) - 1900, Integer.parseInt(date1[1]) - 1, Integer.parseInt(date1[2]));
        String dateE = request.getParameter("edit_dateEnd");
        String date2[] = dateE.split("-");
        Date dateEnd = new Date(Integer.parseInt(date2[0]) - 1900, Integer.parseInt(date2[1]) - 1, Integer.parseInt(date2[2]));
        int status = Integer.parseInt(request.getParameter("edit_role"));
        try {
            Connection con = ConnectDB.Connected();
            Statement stt = con.createStatement();
            String update = "UPDATE News " + "SET HEADER = N'" + header + "', CONTENTS = N'" + textArea + "', AUTHOR = N'" + author + "', DATE_START = '"+dateStart+ "', DATE_END = '"+dateEnd+"', STATUS = "+ status + "WHERE ID = " + id;
            stt.executeUpdate(update);
            con.createStatement();
            con.close();
            response.sendRedirect("/quyen/supporter");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Edit_News.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Edit_News.class.getName()).log(Level.SEVERE, null, ex);
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
