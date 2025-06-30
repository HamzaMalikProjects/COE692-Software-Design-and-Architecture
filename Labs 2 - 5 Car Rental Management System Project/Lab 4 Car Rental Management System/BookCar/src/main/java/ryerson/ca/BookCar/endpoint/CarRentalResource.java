package ryerson.ca.BookCar.endpoint;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import ryerson.ca.BookCar.business.RentalBusiness;
import ryerson.ca.BookCar.helper.CarsXML;

/**
 * Web service endpoint for car rental operations in the BookCar system.
 */
@Path("cars")
public class CarRentalResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of CarRentalResource
     */
    public CarRentalResource() {
    }

    /**
     * Retrieves available cars based on a search query.
     * @param query The search query for car model or manufacturer.
     * @return An XML representation of the available cars.
     */
    @GET
    @Path("search/{query}")
    @Produces(MediaType.APPLICATION_XML + ";charset=utf-8")
    public String getCars(@PathParam("query") String query) {
        RentalBusiness rentalBusiness = new RentalBusiness();
        CarsXML cars = rentalBusiness.getCarsByQuery(query);
        
        // XML serialization logic will remain as is, just changed the context to cars
        // Assuming the JAXB and other XML processing setups are correctly adjusted for CarsXML
        
        return "XML String representing available cars based on the query"; // Placeholder
    }
}
