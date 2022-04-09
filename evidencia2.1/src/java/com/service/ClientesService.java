/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service;

import com.listaClientes;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author R5 3400G
 */
public class ClientesService {
    
public static List <listaClientes> getAllClientes() {

List <listaClientes> clientes = new ArrayList<>();
    
clientes.add(new listaClientes(1L,"Pedro paramo","Izcalli"));
clientes.add(new listaClientes(2L,"Juan Perez","Playa del Carmen"));
clientes.add(new listaClientes(3L,"Juancho Gonzales","Cancun"));
clientes.add(new listaClientes(4L,"Pedrito Sola","Tabasco"));
clientes.add(new listaClientes(5L,"Pikachu Gonzales","Hermosillo"));
clientes.add(new listaClientes(7L,"Panfilo Ramirez","Sonora"));


return clientes; 

}

}
