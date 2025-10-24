import java.sql.*;
import java.util.Scanner;
import java.util.regex.*;
public class Main {
    public static void main(String[] args) throws SQLException {
        Scanner scan = new Scanner(System.in);
        String url = "jdbc:mysql://localhost:3306/data";
        String username = "root";
        String password = "@VJvijay1011";

         Connection con = DriverManager.getConnection(url, username, password);

         System.out.println("Enter the Registered_num or name: ");
         String details = scan.nextLine();

         PreparedStatement stat = null;
  
         if(details.matches("^\\d{2}[A-Z]\\d{3}$"))
         stat = con.prepareStatement("select * from Students where registered_num =?");
         else if(details.matches("[A-Za-z ]*"))
         stat = con.prepareStatement("select * from students where name =?");
         else {
            System.out.println("Invalid input");
            con.close();
            return;
        }
         stat.setString(1, details);
         ResultSet res = stat.executeQuery();
         boolean can =true;
         while(res.next()){
                System.out.println(res.getString(1)+" "+res.getString(2)+" "+res.getString(3)+" "+res.getString(4));
                can = false;
         } 
         if(can==true)
         System.out.println("sorry, no data found");
    con.close();

    }
}

