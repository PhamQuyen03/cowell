/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author tuong
 */
public class ConnectDB {
    static String StrCon= "jdbc:sqlserver://DESKTOP-QKRBMNH\\SQLEXPRESS:1433;" + "databaseName=Quyen;user=quyen;password=123;useUnicode=true;characterEncoding=UTF-8";
//    static String StrCon= "jdbc:sqlserver://localhost;integratedSecurity=true;" + "databaseName=Quyen;user=quyen;password=123";
    //jdbc:sqlserver://localhost;integratedSecurity=true
    
    public static Connection Connected() throws ClassNotFoundException, SQLException
    {
        Connection Con= null;
        try
        {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Con = DriverManager.getConnection(StrCon);
            
        }finally
        {
        }
        return Con;
    }
}
