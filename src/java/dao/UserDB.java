/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author tuong
 */
public class UserDB {

    public int create(String comman) {
        try (Connection con = ConnectDB.Connected()) {
            Statement stt = con.createStatement();
            stt.executeQuery(comman);
            con.close();
            return 1;

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<User> getUser() {
        List<User> users = new ArrayList<>();
        try {
            Connection con = ConnectDB.Connected();
            Statement stt = con.createStatement();
            String comman = "SELECT * FROM User";
            ResultSet rs = stt.executeQuery(comman);
            
            while (rs.next()) {
                String name = rs.getString("USR_NAME");
                String pass = rs.getString("USR_PASSWORD");
                int role = rs.getInt("ROLE");
                User user = new User(name, pass, role);
                users.add(user);
            }
            con.close();
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return users;
    }
    public User detail(int id) {
        User use = new User();
        try {
            
            Connection con = ConnectDB.Connected();
            Statement stt = con.createStatement();
            String sql = "SELECT * FROM User WHERE ID = " +id;
            ResultSet rs = stt.executeQuery(sql);
            while (rs.next()) {
                String name = rs.getString("USR_NAME");
                String pass = rs.getString("USR_PASSWORD");
                int role = rs.getInt("ROLE");
                use.setName(name);
                use.setPassword(pass);
                use.setRole(role);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return use;
    }
        
}
