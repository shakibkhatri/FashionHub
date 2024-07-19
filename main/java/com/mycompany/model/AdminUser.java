/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

/**
 *
 * @author Shakib Khatri
 */
@Entity
@Table(name = "AdminUsers")
public class AdminUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name is required")
    @Column(nullable = false)
    private String Name;

    @NotBlank(message = "Email is required")
    @Column(nullable = false, unique = true)
    private String Email;

    @NotBlank(message = "Number is required")
    @Column(nullable = false)
    private String Number;

    @NotBlank(message = "Password is required")
    @Column(nullable = false)
    private String Password;

    // Default constructor required by JPA
    public AdminUser() {
    }

    // Constructor with fields
    public AdminUser(String Name, String Email, String Number, String Password ) {
        this.Name = Name;
        this.Email = Email;
        this.Number = Number;
        this.Password = Password;
       
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNumber() {
        return Number;
    }

    public void setNumber(String Number) {
        this.Number = Number;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
}