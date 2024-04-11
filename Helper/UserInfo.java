/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

import java.util.Date;
/**
 *
 * @author student
 */
public class UserInfo {
    private String email;
    private String username;
    private String password;
    private Date registrationDate;

    public UserInfo(String email, String username, String password, Date registrationDate) {
        this.email = email;
        this.username = username;
        this.password = password;
        this.registrationDate = registrationDate;
    }
    public UserInfo(String email, String username, String password) {
        this.email = email;
        this.username = username;
        this.password = password;
    }

    // getters and setters for each field
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }
}
