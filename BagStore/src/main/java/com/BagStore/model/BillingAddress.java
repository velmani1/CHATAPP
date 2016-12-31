package com.BagStore.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

import java.io.Serializable;

@Entity
public class BillingAddress implements Serializable{


    private static final long serialVersionUID = -6091579459463730482L;


    @Id
    @GeneratedValue
    private int billingAddressId;
    //@NotEmpty (message ="provide billing Address")
    private String streetName;
    //@NotEmpty (message ="provide billing Address")
    private String apartmentNumber;
    //@NotEmpty (message ="provide billing Address")
    private String city;
    //@NotEmpty (message ="provide billing Address")
    private String state;
    //@NotEmpty (message ="provide billing Address")
    private String country;
    //@NotEmpty (message ="provide billing Address")
    private String zipCode;

    @OneToOne
    private Customer customer;
    public int getBillingAddressId() {
        return billingAddressId;
    }

    public void setBillingAddressId(int billingAddressId) {
        this.billingAddressId = billingAddressId;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getApartmentNumber() {
        return apartmentNumber;
    }

    public void setApartmentNumber(String apartmentNumber) {
        this.apartmentNumber = apartmentNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }


    @Override
    public String toString() {
        return "BillingAddress{" +
                "streetName='" + streetName + '\'' +
                ", apartmentNumber='" + apartmentNumber + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                ", zipCode='" + zipCode + '\'' +
                '}';
    }

} // The End of Class;
