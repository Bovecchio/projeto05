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
public class Product {
    private int product_id;
    private int manufacturer_id;
    private int quantity_on_hand;
    private String description;
    
    public static ArrayList<Product> getList() throws Exception{
    ArrayList<Product> list = new ArrayList<> ();
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String url = "jdbc:derby://localhost:1527/sample";
        try (Connection con = DriverManager.getConnection(url,"app","app"); Statement st = con.createStatement(); ResultSet rs = st.executeQuery("SELECT * FROM PRODUCT")) {
            while(rs.next()){
                Product p = new Product();
                p.setProduct_id(rs.getInt("PRODUCT_ID"));
                p.setDescription(rs.getString("DESCRIPTION"));
                p.setManufacturer_id(rs.getInt("MANUFACTURER_ID"));
                p.setQuantity_on_hand(rs.getInt("QUANTITY_ON_HAND"));
                list.add(p);
                   }
            rs.close(); st.close(); con.close();
             
     return list;
    }
    }

    public Product() {
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getManufacturer_id() {
        return manufacturer_id;
    }

    public void setManufacturer_id(int manufacturer_id) {
        this.manufacturer_id = manufacturer_id;
    }

    public int getQuantity_on_hand() {
        return quantity_on_hand;
    }

    public void setQuantity_on_hand(int quantity_on_hand) {
        this.quantity_on_hand = quantity_on_hand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
