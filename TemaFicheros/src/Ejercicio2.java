
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
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
public class Ejercicio2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        File fichero = new File("C:\\dam\\AAD\\ejercicio1.txt");//declara fichero
        //crea flujo de salida hacia el fichero  
        FileOutputStream fileout = new FileOutputStream(fichero,true);   
        //crea flujo de entrada
        FileInputStream filein = new FileInputStream(fichero);   
        int i;
        for (i=1; i<100; i++)
            fileout.write(i); //escribe datos en el flujo de salida 	  
        fileout.close(); //cerrar stream de salida   
        //visualizar los datos del fichero	   
        while ((i = filein.read()) != -1) //lee datos del flujo de entrada
                 System.out.println(i);		
        filein.close();  //cerrar stream de entrada 
       }

    }
    

