package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import connection.ConnectionManager;
import model.Cake;

public class CakeDAO {
	static Connection con = null;
	static ResultSet rs = null;
	static PreparedStatement ps=null;
	static Statement stmt=null;
	
	static String ck_name;
	static String ck_flavour;
	static float ck_price;
	static int ck_quantity;
	
	//add data
	public String addOrder(Cake cBean)
	{
		ck_name = cBean.getCk_name();
		ck_flavour = cBean.getCk_flavour();
		ck_price = cBean.getCk_price();
		ck_quantity = cBean.getCk_quantity();
		try 
        {
            //step 2: create connection
            con = ConnectionManager.getConnection();
            //step3 : create statement - using preparedStatement
            ps=con.prepareStatement("insert into cake(ck_name, ck_flavour, ck_quantity, ck_price)values(?,?,?,?)");
            
           
            ps.setString(1,ck_name);
            ps.setString(2,ck_flavour);
            ps.setFloat(3, ck_price);
            ps.setInt(4, ck_quantity);
            System.out.println(ck_name + ck_flavour + ck_price + ck_quantity);
            int i= ps.executeUpdate();
            
           
            
            if (i!=0)  //Just to ensure data has been inserted into the database
            	JOptionPane.showMessageDialog(null,"Cake successfully insert!");
        }
        catch (Exception ex) 
        {
        	return "Oops.. Something went wrong there..!";
        }return "Oops.. Something went wrong there..!";
	}
	
	//list data
    public static List<Cake> getAllCake() throws ClassNotFoundException, SQLException
    {
        List<Cake> cake = new ArrayList<>();
        
        con = ConnectionManager.getConnection();
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from cake ");
        
       
        while (rs.next()) 
        {
        	 
 	       ck_name = rs.getString("ck_name");
 	       ck_flavour = rs.getString("ck_flavour");
 	       ck_price = rs.getFloat("ck_price");
 	       ck_quantity = rs.getInt("ck_quantity");
 	
 	       Cake c = new Cake(ck_name, ck_flavour, ck_price, ck_quantity);
 	       cake.add(c);

        } 
        return cake;
    }
}
