package ryerson.ca.BookCar.business;

import ryerson.ca.BookCar.helper.CarsXML;
import ryerson.ca.BookCar.persistence.Car_CRUD;
import ryerson.ca.BookCar.helper.Car;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Handles business logic for car rentals in the BookCar system.
 */
public class RentalBusiness {
    
    public CarsXML getCarsByQuery(String query) {
        // Fetch cars matching the query
        Set<Car> cars = Car_CRUD.searchForCars(query);
        Map<String, Car> uniqueCars = new HashMap<>();
        System.out.println("&&&&&&&&&&&&&&&&&&&&&&" + cars.size());
        for (Car car : cars) {
            // Assuming each car is unique by its license plate
            if (!uniqueCars.containsKey(car.getLicensePlate())) {
                uniqueCars.put(car.getLicensePlate(), car);
            }
            // If there are multiple entries per car (unlikely in this context), additional logic would be needed
        }
        System.out.println("**********************" + uniqueCars.size());
        CarsXML carsXML = new CarsXML();
        carsXML.setCars(new ArrayList<>(uniqueCars.values()));
        return carsXML;
    }
}
