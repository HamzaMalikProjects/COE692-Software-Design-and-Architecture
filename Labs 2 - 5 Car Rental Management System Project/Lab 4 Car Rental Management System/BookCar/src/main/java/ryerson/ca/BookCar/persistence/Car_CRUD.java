package ryerson.ca.BookCar.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.Set;
import ryerson.ca.BookCar.helper.Car;
import ryerson.ca.BookCar.helper.CarManufacturer;

public class Car_CRUD {
    
    private static Connection getCon() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookcar_db?autoReconnect=true&useSSL=false", "root", "password");
            System.out.println("Connection established.");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static Set<Car> searchForCars(String query) {
        Set<Car> cars = new HashSet<>();
        try {
            Connection con = getCon();
            String q = "SELECT * FROM CAR INNER JOIN MANUFACTURER ON CAR.manufacturer_id = MANUFACTURER.id WHERE model LIKE '%" + query + "%' OR name LIKE '%" + query + "%';";
            System.out.println(q);
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String licensePlate = rs.getString("license_plate");
                String model = rs.getString("model");
                String name = rs.getString("name");
                String country = rs.getString("country");
                CarManufacturer manufacturer = new CarManufacturer(name, country);
                Car car = new Car(licensePlate, model, manufacturer);
                cars.add(car);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>"+ cars.size());
        return cars;
    }
}
