/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author finha
 */
public class Manufacturer {
    private int id;
    private String name;
    private String email;
    private String city;
    
    public static ArrayList<Manufacturer> getList() throws Exception{
    ArrayList<Manufacturer> list = new ArrayList<> ();
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/sample";
        try (Connection con = DriverManager.getConnection(url,"app","app"); Statement st = con.createStatement(); ResultSet rs = st.executeQuery("SELECT * FROM MANUFACTURER")) {
            while(rs.next()){
                Manufacturer m = new Manufacturer();
                m.setId(rs.getInt("MANUFACTURER_ID"));
                m.setName(rs.getString("NAME"));
                m.setEmail(rs.getString("EMAIL"));
                m.setCity(rs.getString("CITY"));
                list.add(m);
            }
 }
     return list;
    }
    public Manufacturer(){
    
    }
    public Manufacturer(int id, String name, String email, String city) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
  
}