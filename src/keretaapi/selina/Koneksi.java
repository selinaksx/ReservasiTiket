/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package keretaapi.selina;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Shelin
 */
public class Koneksi {
     private static Connection koneksi;
    public static Connection getConnection() throws SQLException{
        if (koneksi == null){
            Driver driver = new Driver();
            koneksi = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kereta?zeroDateTimeBehavior=convertToNull","root","");
        } return koneksi;
    }
}
