
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template


package com.mycompany.model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Objects;



@Entity
@Table(name = "Users")
public class User {

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

    private String Address;
    private String City;
    private String State;
    private String Country;

    // Default constructor required by JPA
    public User() {
    }

    // Constructor with fields
    public User(String Name, String Email, String Number, String Password, String Address, String City, String State, String Country) {
        this.Name = Name;
        this.Email = Email;
        this.Number = Number;
        this.Password = Password;
        this.Address = Address;
        this.City = City;
        this.State = State;
        this.Country = Country;
    }

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    // Equals and HashCode methods based on id
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}




