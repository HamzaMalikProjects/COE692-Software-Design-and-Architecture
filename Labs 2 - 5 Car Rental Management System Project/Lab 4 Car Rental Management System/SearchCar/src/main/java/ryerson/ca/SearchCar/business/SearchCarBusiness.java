/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ryerson.ca.SearchCar.business;

/**
 *
 * @author hamzamalik
 */

import ryerson.ca.SearchCar.helper.CarsXML;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import ryerson.ca.SearchCar.persistence.Car_CRUD;
import ryerson.ca.SearchCar.helper.Car;

public class SearchCarBusiness {
    
    public CarsXML getCarsByQuery(String query) {
        Set<Car> cars = Car_CRUD.searchForCars(query);
        Map<String, Car> uniqueCars = new HashMap<>();
        for(Car car : cars){
            if(!uniqueCars.containsKey(car.getRegistrationNumber())){
                uniqueCars.put(car.getRegistrationNumber(), car);
            }
        }
        CarsXML cs = new CarsXML();
        cs.setCars(new ArrayList<>(uniqueCars.values()));
        return cs;
    }
}

