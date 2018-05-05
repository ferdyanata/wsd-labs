/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.rest;

import uts.wsd.Rectangle;
import javax.ws.rs.*;
import javax.ws.rs.core.*;

/**
 *
 * @author Ferdy
 */
@Path("/geometry")
public class GeometryService {

    @Path("hello")
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        return "Hello World";
    }

    @Path("rectangle")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    // @QueryParam is set in the address bar. We are also able to edit the value in the address bar.
    public Rectangle rectangle(@QueryParam("width") double width, @QueryParam("height") double height) {
        Rectangle rect = new Rectangle(width, height);
        return rect;   
    }
    
    @Path("circle")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Circle circle(@QueryParam("radius") double radius){
        Circle circle = new Circle(radius);
        return circle;
    }
}
