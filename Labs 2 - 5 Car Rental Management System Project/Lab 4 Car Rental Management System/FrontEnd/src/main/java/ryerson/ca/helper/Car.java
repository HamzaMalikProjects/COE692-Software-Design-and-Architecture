/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ryerson.ca.helper;

import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Represents a car in the car rental management system.
 */
@XmlRootElement(name = "car")
@XmlAccessorType(XmlAccessType.FIELD)
public class Car {

    private String licensePlate; 
    private String model;
    private ArrayList<CarManufacturer> manufacturers;

    public Car() {
    }

    public Car(String licensePlate, String model, CarManufacturer manufacturer) {
        this.licensePlate = licensePlate;
        this.model = model;
        this.manufacturers = new ArrayList<>();
        this.manufacturers.add(manufacturer);
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public String getModel() {
        return model;
    }

    public ArrayList<CarManufacturer> getManufacturers() {
        return manufacturers;
    }

    public void addManufacturer(CarManufacturer manufacturer) {
        this.manufacturers.add(manufacturer);
    }
}
