/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.soap.client;

/**
 *
 * @author Ferdy
 */
public class Geometryclient {

    public static void main(String[] args) {
        Geometry_Service locator = new Geometry_Service();
        Geometry geometry = locator.getGeometryPort();

        
    }

}
