/**
 *
 * @author Ferdy
 */
package uts.wsd;

import javax.xml.bind.annotation.*;

@XmlRootElement
// Below the access type is set to property because in this class, we it uses 4 Java Bean properties,
// indicated by the four methods
@XmlAccessorType(XmlAccessType.PROPERTY)
public class Circle{
    private double radius;
    
    public Circle() {
        super();
    }

    public Circle(double radius) {
        super();
        this.radius = radius;
    }
    
    @XmlElement
    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
    @XmlElement
   public double getArea()   { 
      return Math.PI * (radius * radius);
   }
   
   @XmlElement
   public double getCircumference()   {
      return 2 * Math.PI * radius;
   }
   
   @XmlElement
   public double getDiameter(){
       return 2 * radius;
   }
    
}