/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author hamzamalik
 */

package ryerson.ca.SearchCar.helper;

import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "cars")
@XmlAccessorType(XmlAccessType.FIELD)
public class CarsXML {
    @XmlElement(name="car")
    private ArrayList<Car> cars;
    
    public ArrayList<Car> getCars() {
        return cars;
    }
    
    public void setCars(ArrayList<Car> cars) {
        this.cars = cars;
    }
}

