/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 *
 * @author Ferdy
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable
{
    @XmlAttribute(name = "email")
    private String email;
    @XmlAttribute(name = "name")
    private String name;
    @XmlAttribute(name = "password")
    private String password;
    @XmlAttribute(name = "gender")
    private String gender;
    @XmlAttribute(name = "favouriteColour")
    private String favouriteColour;

    public User() {}
     
    public User(String email, String name, String password, String gender, String favouriteColour)
    {
        this.email = email;
        this.name = name;
        this.password = password;
        this.gender = gender;
        this.favouriteColour = favouriteColour;
    }
    
    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getGender()
    {
        return gender;
    }

    public void setGender(String gender)
    {
        this.gender = gender;
    }

    public String getFavouriteColour()
    {
        return favouriteColour;
    }

    public void setFavouriteColour(String favouriteColour)
    {
        this.favouriteColour = favouriteColour;
    }

}
