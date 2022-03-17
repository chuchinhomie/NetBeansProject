/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.journaldev.model;

/**
 *
 * @author R5 3400G
 */
public class Employee {
    
//Decariaciones de variables
private int id;
private String name;
private String role;

public Employee(){
}

//Metodo GET de ID.
public int getId(){
return id;
}

//Metodo SET de ID.
public void setId(int id){
this.id = id;
}

//Metodo GET de Nombre.
public String getName(){
return name;
}

//Metodo SET de Nombre.
public void setName(String name){
this.name = name;
}

//Metodo GET de Rol.
public String getRole(){
return role;
}

//Metodo SET de Rol.
public void setRole(String role){
this.role = role;
}
    
}

