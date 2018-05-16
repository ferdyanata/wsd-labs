package uts.wsd.soap;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Ferdy
 */
@WebService(serviceName = "Calculator")
public class Calculator {

    /**
     * Any public method is automatically considered a 
     * WebMethod and you therefore should not make a method public 
     * unless it is intended to be a WebMethod
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    public int add(int a, int b){
        return a + b;
    }
    
    public int sub(int a, int b){
        return a - b;
    }
    
    public int mul(int a, int b){
        return a * b;
    }
    
    public int div(int a, int b){
        return a / b;
    }
}
