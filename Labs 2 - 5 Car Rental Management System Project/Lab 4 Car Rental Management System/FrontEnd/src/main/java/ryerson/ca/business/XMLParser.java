package ryerson.ca.business;

import java.io.StringReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class XMLParser {

    public static String convertCarsXmlToHtml(String xml) {
        StringBuilder html = new StringBuilder("<table border=\"1\">");
        html.append("<tr><th>Model</th><th>Brand</th><th>Year</th><th>Price</th></tr>"); // Add header row for the table
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(new InputSource(new StringReader(xml)));
            NodeList carNodes = document.getElementsByTagName("car");

            for (int i = 0; i < carNodes.getLength(); i++) {
                Node car = carNodes.item(i);
                if (car.getNodeType() == Node.ELEMENT_NODE) {
                    Element carElement = (Element) car;
                    // Assuming the car element has model, brand, year, and price tags
                    String model = carElement.getElementsByTagName("model").item(0).getTextContent();
                    String brand = carElement.getElementsByTagName("brand").item(0).getTextContent();
                    String year = carElement.getElementsByTagName("year").item(0).getTextContent();
                    String price = carElement.getElementsByTagName("price").item(0).getTextContent();
                    
                    html.append("<tr>")
                        .append("<td>").append(model).append("</td>")
                        .append("<td>").append(brand).append("</td>")
                        .append("<td>").append(year).append("</td>")
                        .append("<td>").append(price).append("</td>")
                        .append("</tr>");
                }
            }
            html.append("</table>");
        } catch (Exception e) {
            e.printStackTrace();
            // In a real scenario, log this error and handle it appropriately
            return "Error processing XML to HTML";
        }
        return html.toString();
    }

    public static void main(String[] args) {
        // Example XML for testing
        String testXml = "<cars>"
                + "<car><model>Model X</model><brand>Tesla</brand><year>2020</year><price>80000</price></car>"
                + "<car><model>Mustang</model><brand>Ford</brand><year>2021</year><price>35000</price></car>"
                + "</cars>";
        String htmlTable = convertCarsXmlToHtml(testXml);
        System.out.println(htmlTable);
    }
}
