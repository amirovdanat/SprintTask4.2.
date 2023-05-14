package SprintTask42;

import java.sql.*;
import java.util.ArrayList;

public class DBConnector42 {

    private static Connection connection;
    static{
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5433/dataBase32","postgres", "postgres"
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<ModelItems42> getItems (){
        ArrayList<ModelItems42> items=new ArrayList<>();
        try {
            PreparedStatement statement= connection.prepareStatement("SELECT * FROM table_items42");
            ResultSet resultSet= statement.executeQuery();
            while (resultSet.next()){
                int id= resultSet.getInt("id");
                String name= resultSet.getString("name");
                String description= resultSet.getString("description");
                double price=resultSet.getDouble("price");

                items.add(new ModelItems42(id,name,description,price));
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }



    public static Model42Users autoriztion(String email, String password) throws SQLException {
        Model42Users users = null;
        try {
            PreparedStatement statement= connection.prepareStatement(
                    "SELECT * FROM table_users42 WHERE email=? AND password=?");
            statement.setString(1, email);
            statement.setString(2,password);
            ResultSet resultSet= statement.executeQuery();
            if (resultSet.next()){
                users=new Model42Users(resultSet.getInt("id"), resultSet.getString("email"), resultSet.getString("full_name"));
                System.out.println(users.getFullName());
            }
            statement.close();
        }catch (SQLException e){
            throw e;
        }
            return users;
    }
}
