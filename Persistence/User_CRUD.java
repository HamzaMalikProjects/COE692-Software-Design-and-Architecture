/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistence;

import Helper.UserInfo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

public class User_CRUD {

    private static Connection getCon() {
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CBMS?zeroDateTimeBehavior=CONVERT_TO_NULL","root","student123");
            System.out.println("Connection to USER_CRUD established.");
        }catch(Exception e){System.out.println(e);}
        return con; 
    }

    public static UserInfo read(String username, String password){
        UserInfo bean = null;
        try{
            Connection con=getCon();

            
            
            String q = "select * from USER WHERE username LIKE " + '"'+username+"\";";
            
            PreparedStatement ps=con.prepareStatement(q);
            ResultSet rs=ps.executeQuery();
            
                    //System.out.println("0000000000000000000000000000001 "+ username);
                    //System.out.println("0000000000000000000000000000001 "+ password);
                    //System.out.println(q);
            if(rs.next()){
                //System.out.println("0000000000000000000000000000002 "+ username);
                //System.out.println("0000000000000000000000000000002 "+ password);
                //bean = new UserInfo();
                String email=rs.getString("email");
                Date regDate=rs.getDate("registrationDate");
                String pass = rs.getString("password");
                
                if(pass.equals(password)){
                    bean = new UserInfo(email,username,password, regDate);
                    //System.out.println("0000000000000000000000000000000 "+ username);
                    //bean = new UserInfo(email,username,password);
                }
                
             }
             
             con.close();
         }catch(Exception e){System.out.println(e);}
         
         return bean; 
     }
}