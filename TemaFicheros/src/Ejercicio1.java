
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author joaquin.antequera
 */
public class Ejercicio1 {
    
    public static void main(String[] args) throws IOException{
            
            File fichero = new File("C:\\Users\\joaquin.antequera\\Desktop\\dam\\AAD\\ejercicio1.txt");//declarar fichero
            FileReader fic = new FileReader(fichero); //crear el flujo de entrada  
            int i;
            while ((i = fic.read()) != -1) //se va leyendo un carácter
              System.out.print( (char) i);
            fic.close(); //cerrar fichero  
            fic = new FileReader(fichero);
            char b[] = new char [20];
            while ((i = fic.read(b)) != -1){
                System.out.println(b);
                
        } 
    }
}
    
