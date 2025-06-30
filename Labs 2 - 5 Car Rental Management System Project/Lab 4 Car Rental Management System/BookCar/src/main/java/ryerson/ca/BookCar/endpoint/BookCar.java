package ryerson.ca.BookCar.endpoint;

import java.util.Set;
import javax.ws.rs.core.Application;

/**
 * Application configuration setting up the RESTful service paths.
 */
@javax.ws.rs.ApplicationPath("webresources")
public class BookCar extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Populates the set of resource classes with classes defined in the project.
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        // Ensure to add the CarRentalResource class here to make it available for the RESTful services
        resources.add(ryerson.ca.BookCar.endpoint.CarRentalResource.class);
    }
}
