/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.soap;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import uts.wsd.Rectangle;
import uts.wsd.Circle;

/**
 *
 * @author Ferdy
 */
@WebService(serviceName = "Geometry")
public class Geometry {

    /**
     * This is a sample web service operation
     * @param width
     * @param height
     * @return 
     */
    @WebMethod (operationName = "getRectangleGeometry")
    public Rectangle getRectangleGeometry(double width, double height){
        Rectangle rect = new Rectangle(width, height);
        return rect;
    }
    
    @WebMethod (operationName = "getCircleGeometry")
    public Circle getCircleGeometry(double radius){
        Circle circ = new Circle(radius);
        return circ;
        
    }
}
