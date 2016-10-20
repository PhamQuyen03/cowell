/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import dao.ConnectDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author tuong
 */
public class Test {

    public static void main(String[] args) {
        try {
            Connection Con = ConnectDB.Connected();
            Statement stmt = Con.createStatement();
            stmt.executeQuery( "INSERT INTO USERS " +"VALUES ('QUYEN11', '123', 1)");
            
//            List<User> users = new ArrayList<>();
//            while (rs.next()) {
//                String name = rs.getString("USR_NAME");
//                String pass = rs.getString("USR_PASSWORD");
//                int role = rs.getInt("ROLE");
//                User user = new User(name, pass, role);
//                users.add(user);
//            }
//            
//            for(User use : users){
//                System.out.println(use.getName());
//            }
            Con.close();
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
    }
}
