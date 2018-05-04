/**
 *
 * @author Ferdy
 */
package uts.wsd.rest;

import javax.xml.bind.annotation.*;

@XmlRootElement
// Below the access type is set to property because in this class, we it uses 4 Java Bean properties,
// indicated by the four methods
@XmlAccessorType(XmlAccessType.PROPERTY)
public class Circle{
    private double area;
    private double circumference;
    private double diameter;
    private double radius;
    
    public Circle() {
        super();
    }

    public Circle(double area) {
        this.area = area;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getCircumference() {
        return circumference;
    }

    public void setCircumference(double circumference) {
        this.circumference = circumference;
    }

    public double getDiameter() {
        return diameter;
    }

    public void setDiameter(double diameter) {
        this.diameter = diameter;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
    public double diameter()  {
      diameter = radius * radius;
      return diameter;
   }

   public double area()   {
      area = Math.PI * (radius * radius);
      return area;
   }

   public double circumference()   {
      circumference = 2 * Math.PI * radius;
      return circumference;
   }
    
}