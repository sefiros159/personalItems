package Model;

import java.awt.BorderLayout;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author Sefir
 */
public class Conection 
{
    
    public Connection conect;

    public Conection (String server, String user, String pass)
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (Exception e) 
        {
            System.out.println("Error: Couldn't find the driver");
            System.out.println(e.toString());
        }
        
        try 
        {
            conect = DriverManager.getConnection(server,user,pass);
        }
        catch (Exception e) 
        {
            System.out.println("Connection Error");
            System.out.println(e.toString());
        }
    
    }
        
        
        public String addItem(String iType, String iName, String feat1, String feat2, String feat3)
        {
            try 
            {
                CallableStatement sql = conect.prepareCall("{call SP_insertItems(?,?,?,?,?)}");
                sql.setString(1, iType);
                sql.setString(2, iName);
                sql.setString(3, feat1);
                sql.setString(4, feat2);
                sql.setString(5, feat3);
                sql.execute();
                return "Done!";
            }
            catch (Exception e) 
            {
                System.out.println("Error: Couldn't add the item");
                return "fail!";
            }
        }
        
        public String[][] consultItem()
        {
            
            String items[][] = null;
            ResultSet rs;
            
            int counter = 0;
            
            try 
            {
                
                CallableStatement sql = conect.prepareCall("{call SP_consultItems}");
                rs = sql.executeQuery();
                
                while (rs.next())
                {                    
                    counter++;
                }
                items = new String[counter][6];
                rs.first();
                int i = 0;
                
                do
                {
                    items[i][0] = rs.getString(1);
                    items[i][1] = rs.getString(2);
                    items[i][2] = rs.getString(3);
                    items[i][3] = rs.getString(4);
                    items[i][4] = rs.getString(5);
                    items[i][5] = rs.getString(6);
                    i++;
                    
                }
                while (rs.next());
                
            }
            catch (Exception e) 
            {
                System.out.println(e.toString());
                System.out.println("Error: Couldn't find the 'items'");
            }
            
            return items;
            
        }
        
        public Boolean UpdateItem(String ItemType, String ItemName, String Feature1, String Feature2, String Feature3, String idItem)
        {
            String item[][] = new String[1][6];
            
            try 
            {
                CallableStatement sql = conect.prepareCall("{SP_UpdateItem(?,?,?,?,?,?)}");
                
                sql.setInt(1, Integer.parseInt(idItem));
                sql.setString(2, ItemType);
                sql.setString(3, ItemName);
                sql.setString(4, Feature1);
                sql.setString(5, Feature2);
                sql.setString(6, Feature3);
                sql.execute();
                return true;
            }
            catch (Exception e)
            {
                System.out.println(e.toString());
                System.out.println("Update Fail");
                return false;
            }
        }
        
    
    
}
