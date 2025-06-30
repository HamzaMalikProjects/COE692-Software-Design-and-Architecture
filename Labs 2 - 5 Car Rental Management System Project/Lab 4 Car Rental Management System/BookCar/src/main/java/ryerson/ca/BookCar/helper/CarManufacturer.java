package ryerson.ca.BookCar.helper;

/**
 * Represents a car manufacturer in the car rental management system.
 */
public class CarManufacturer {
    private String name;
    private String country;

    public CarManufacturer(String name, String country) {
        this.name = name;
        this.country = country;
    }

    public String getName() {
        return name;
    }

    public String getCountry() {
        return country;
    }
}
