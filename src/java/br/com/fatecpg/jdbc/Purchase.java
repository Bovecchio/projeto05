


package br.com.fatecpg.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author John
 */
public class Purchase {
    private int order_num;
    private int id;
    private double price;
    private int quant;
    
    
    
   public static ArrayList<Purchase>getList()throws Exception{
       ArrayList<Purchase>list  = new ArrayList<> ();
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       String url = "jdbc:derby://localhost:1527/sample";
       try (Connection con = DriverManager.getConnection(url,"app","app"); Statement st = con.createStatement(); ResultSet rs = st.executeQuery("SELECT * FROM PURCHASE_ORDER")) {
            while(rs.next()){
                Purchase f = new Purchase();
                f.setOrder_num(rs.getInt("ORDER_NUM"));
                f.setId(rs.getInt("PRODUCT_ID"));
                f.setQuant(rs.getInt("QUANTITY"));
                f.setPrice(rs.getDouble("SHIPPING_COST"));
                list.add(f);
                  }
            rs.close(); st.close(); con.close();
             
     return list;
    }
    }
    public Purchase() {
    }

    public Purchase(int order_num, int id, int quant, double price) {
        this.order_num = order_num;
        this.id = id;
        this.quant = quant;
        this.price = price;
    }


     public int getOrder_num() {
        return order_num;
    }

    public void setOrder_num(int order_num) {
        this.order_num = order_num;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuant() {
        return quant;
    }

    public void setQuant(int quant) {
        this.quant = quant;
    }

          
    }
    
  
    

