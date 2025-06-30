package ryerson.ca.SearchCar.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.Set;
import ryerson.ca.SearchCar.helper.Car;

public class Car_CRUD {
    
    private static Connection getCon() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/searchcar_db", "user", "password");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
    
    public static Set<Car> searchForCars(String query) {
        Set<Car> cars = new HashSet<>();
        try (Connection con = getCon()) {
            String sql = "SELECT * FROM Car WHERE make LIKE ? OR model LIKE ?";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, "%" + query + "%");
                ps.setString(2, "%" + query + "%");
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        String registrationNumber = rs.getString("registrationNumber");
                        String make = rs.getString("make");
                        String model = rs.getString("model");
                        String availabilityDate = rs.getString("availabilityDate");
                        Car car = new Car(registrationNumber, make, model, availabilityDate);
                        cars.add(car);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cars;
    }
}
