/*
 * JAXB is used to map XML data structures ontop Java class structures. 
 */
package uts.wsd;

import java.util.*;
import java.io.*;
import javax.xml.bind.*;

public class TestJAXB implements Serializable
{

    public static void main(String[] args) throws Exception
    {
        Users users = new Users();
        users.addUser(new User("ryan@ryanheise.com", "Ryan Heise", "blahblah", "male", "green"));
        users.addUser(new User("joe@bloggs.com", "Joe Bloggs", "foobar", "male", "yellow"));
        users.addUser(new User("ferdy.anata@gmail.com", "Ferdy Anata", "admin123", "Male", "orange"));
        // Boilerplate code to convert objects to XML...
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        m.marshal(users, System.out);
    }
}
