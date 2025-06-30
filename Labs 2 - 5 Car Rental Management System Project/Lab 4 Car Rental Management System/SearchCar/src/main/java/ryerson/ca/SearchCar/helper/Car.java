package ryerson.ca.SearchCar.helper;

import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "car")
@XmlAccessorType(XmlAccessType.FIELD)
public class Car {
    
    private String registrationNumber;
    private String make;
    private String model;
    private String availabilityDate;

    // Constructors, getters, setters...

    public Car() {
        // Default constructor
    }

    public Car(String registrationNumber, String make, String model, String availabilityDate) {
        this.registrationNumber = registrationNumber;
        this.make = make;
        this.model = model;
        this.availabilityDate = availabilityDate;
    }

    // Standard getters and setters...

    public String getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(String registrationNumber) {
        this.registrationNumber = registrationNumber;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getAvailabilityDate() {
        return availabilityDate;
    }

    public void setAvailabilityDate(String availabilityDate) {
        this.availabilityDate = availabilityDate;
    }

    // hashCode, equals, toString...

    @Override
    public int hashCode() {
        // Implement your hashCode
        return registrationNumber != null ? registrationNumber.hashCode() : 0;
    }

    @Override
    public boolean equals(Object obj) {
        // Implement your equals method
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;

        Car car = (Car) obj;

        return registrationNumber != null ? registrationNumber.equals(car.registrationNumber) : car.registrationNumber == null;
    }

    @Override
    public String toString() {
        // Implement your toString method
        return "Car{" +
               "registrationNumber='" + registrationNumber + '\'' +
               ", make='" + make + '\'' +
               ", model='" + model + '\'' +
               ", availabilityDate='" + availabilityDate + '\'' +
               '}';
    }
}
