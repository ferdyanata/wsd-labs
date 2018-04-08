/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "users")
public class Users implements Serializable
{
    @XmlElement(name = "user")
    private final ArrayList<User> list = new ArrayList<User>();

    public Users() {}
    
    public ArrayList<User> getList()
    {
        return list;
    }

    public void addUser(User user)
    {
        list.add(user);
    }

    public void removeUser(User user)
    {
        list.remove(user);
    }

    public User getUser(String email){
        for(User user : list){
            if(user.getEmail().equals(email)){
                return user;
            }
        }
        return null;
    }
    
    public User login(String email, String password)
    {
        // Checking the list if their email and password matches to one available in the ArrayList.
        for (User user : list)
        {
            if (user.getEmail().equals(email) && user.getPassword().equals(password))
            {
                return user; // Login correct. Return this user.
            }
        }
        return null; // Login incorrect. Return null.
    }
}
