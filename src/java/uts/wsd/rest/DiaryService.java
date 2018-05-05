/**
 *
 * @author Ferdy
 */
package uts.wsd.rest;
 
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import java.io.*;
import uts.wsd.DiaryApplication;
import uts.wsd.User;
import uts.wsd.Users;
 
// The web service will be accessible via the path "/diaryApp"
@Path("/diaryApp")
public class DiaryService {
 // Tells Jersey to inject an instance of the JSP application object into this field.
 @Context
 private ServletContext application;
 
 //getDiaryApp() method does the equivalent of a <jsp:useBean> action. i.e. It checks if there is 
 // already a "diaryApp" bean stored in the application and accesses it. If none, create and initialize by setting
 // the file path as getRealPath
 private DiaryApplication getDiaryApp() throws JAXBException, IOException {
  // The web server can handle requests from different clients in parallel.
  // These are called "threads".
  //
  // We do NOT want other threads to manipulate the application object at the same
  // time that we are manipulating it, otherwise bad things could happen.
  //
  // The "synchronized" keyword is used to lock the application object while
  // we're manpulating it.
  synchronized (application) {
   DiaryApplication diaryApp = (DiaryApplication)application.getAttribute("diaryApp");
   if (diaryApp == null) {
    diaryApp = new DiaryApplication();
    diaryApp.setFilePath(application.getRealPath("WEB-INF/users.xml"));
    application.setAttribute("diaryApp", diaryApp);
   }
   return diaryApp;
  }
 }
 
 /** YOUR METHODS WILL BE INSERTED HERE
     * @return
     * @throws javax.xml.bind.JAXBException
     * @throws java.io.IOException  **/
 @Path("users")
 @GET
 @Produces(MediaType.TEXT_XML)
 public Users getUsers() throws JAXBException, IOException, Exception{
     // getDiaryApp() was renamed above where DiaryApplication is set to private, so we can access getUsers()
     // in DiaryApplication.java
     return getDiaryApp().getUsers();
 }
 
 @Path("users/{email}")
 @GET
 @Produces(MediaType.TEXT_XML)
 public User getUser(@PathParam("email") String email) throws IOException, JAXBException {
     User user = getDiaryApp().getUser(email);
     return user;
 }
}