/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author R5 3400G
 */
public class MovieExpert {

public List getMovies(String genre){

List genres = new ArrayList();

if (genre.equals("accion")){
genres.add("Duro de Matar");
genres.add("Batman el caballero de la noche");

} else if (genre.equals("romance")){
genres.add("Amar te duele");
genres.add("Your Name");

}else if (genre.equals("comedia")){
genres.add("Bob esponja");
genres.add("Click");

}else {
genres.add("Viaje de Chihiro");
genres.add("Akira");
}
return (genres);
}
}
