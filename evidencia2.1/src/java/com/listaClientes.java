/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com;

/**
 *
 * @author R5 3400G
 */
public class listaClientes {
    
    private Long no_cuenta;
    private String nombre;
    private String ciudad;

    public Long getno_cuenta() {
        return no_cuenta;
    }

    public void setno_cuenta(Long no_cuenta) {
        this.no_cuenta = no_cuenta;
    }


    public listaClientes(Long no_cuenta, String nombre) {
        this.no_cuenta = no_cuenta;
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

 public listaClientes(Long no_cuenta, String nombre, String ciudad) {
        this.no_cuenta = no_cuenta;
        this.nombre = nombre;
    }
public String getCiudad(){
return ciudad;
}

public void setCiudad(String ciudad){
this.ciudad = ciudad;
}

}
