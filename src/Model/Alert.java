/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class Alert {
    
    public static int count=0 ;
    
    public String title;
    public String size;
    public String status ;
    public String type;
    public String username ;
    int id ;
    
    public Alert(){
        
        count ++ ;
        id = count ;
        
        title = size = status = type = "" ;
    }

    public void AddToDatabase( ) throws ClassNotFoundException, SQLException{
        
        String url="jdbc:mysql://localhost:3306/housebuyandrent";
        String username="root";
        String password="root";

        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(url, username, password) ;
        
        PreparedStatement stmt = null;
        stmt = con.prepareStatement("INSERT INTO alert(title , size , type ,status, username,id) values(? , ? , ? ,?, ?,?) ");
        
        stmt.setString(1, title);
        stmt.setString(2, size);
        stmt.setString(3, type);
        stmt.setString(4, status);
        stmt.setString(5, this.username);
        stmt.setInt(6, id);
        
        stmt.executeUpdate();

        stmt.close();
        con.close();
        
    }
    
}


