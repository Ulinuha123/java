/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package driv;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author lks
 */

public class Koneksi {
public Koneksi(){}
public static Connection getkoneksi(){
Connection cn=null;
    try {
        cn=DriverManager.getConnection("jdbc:mysql://localhost/siperpustakaan","root","");
        System.out.println("koneksi berhasil");
        return cn;   
    } catch (Exception e) {
        JOptionPane.showMessageDialog(null,"koneksi gagal");
        return null;
    }
    
}
    
}
