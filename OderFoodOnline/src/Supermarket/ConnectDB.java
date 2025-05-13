/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Supermarket;

/**
 *
 * @author AD
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3305/SupermarketDB";
        String user = "root";
        String password = "1234";

        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("Kết nối  thành công!");
            conn.close();
        } catch (SQLException e) {
            System.out.println("Lỗi kết nối: " + e.getMessage());
        }
    }
}