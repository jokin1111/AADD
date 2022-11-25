/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author joaquin.antequera
 */
import java.io.Serializable;
public class PersonaBean implements Serializable{
    
    private String nombre;
    private String apellidos;
    private int edad;
 
    public String getNombre() {
       return nombre;
    }
    
    public void setNombre(String nombre) {
       this.nombre = nombre;
    }
    
    public String getApellidos() {
       return apellidos;
    }
    
    public void setApellidos(String apellidos) {
       this.apellidos = apellidos;
    }
    
    public int getEdad() {
       return edad;
    }
    
    public void setEdad(int edad) {
       this.edad = edad;
    }
    
    public PersonaBean(String nombre, String apellidos, int edad) {
       super();
       this.nombre = nombre;
       this.apellidos = apellidos;
       this.edad = edad;
    }
    
    public PersonaBean() {
       super();
    }
 
}
