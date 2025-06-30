package ryerson.ca.SearchCar.endpoint;

import java.io.StringWriter;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import ryerson.ca.SearchCar.business.SearchCarBusiness;
import ryerson.ca.SearchCar.helper.CarsXML;

@Path("search")
public class SearchCarResource {

    @Context
    private UriInfo context;

    public SearchCarResource() {
        // Default constructor
    }

    @GET
    @Path("{query}")
    @Produces(MediaType.APPLICATION_XML + ";charset=utf-8")
    public String getXml(@PathParam("query") String query) {
        SearchCarBusiness search = new SearchCarBusiness();
        CarsXML cars = search.getCarsByQuery(query);
        StringWriter sw = new StringWriter();
        
        try {
            JAXBContext jaxbContext = JAXBContext.newInstance(CarsXML.class);
            Marshaller jaxbMarshaller = jaxbContext.createMarshaller();
            jaxbMarshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
            jaxbMarshaller.marshal(cars, sw);
        } catch (JAXBException ex) {
            ex.printStackTrace();
            return "error happened";
        }
        
        return sw.toString();
    }
}
