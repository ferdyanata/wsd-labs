/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.*;
import javax.xml.bind.*;
/**
 *
 * @author Ferdy
 */
public class DiaryApplication {
    // Load list of users from the XML file at location filePath then
    private String filePath;
    // store them into "users" field
    private Users users;
    
    public DiaryApplication(){}

    public DiaryApplication(String filePath, Users users) {
        this.filePath = filePath;
        this.users = users;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) throws JAXBException, FileNotFoundException, IOException {
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller u = jc.createUnmarshaller();
        
        try (FileInputStream fin = new FileInputStream(filePath)) {
            users = (Users)u.unmarshal(fin);
        }
        
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
    
}
