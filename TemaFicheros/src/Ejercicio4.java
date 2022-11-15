
import java.io.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author joaquin.antequera
 */
public class Ejercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws IOException{
        
        File fichero = new File("C:\\dam\\AAD\\ejercicio2.txt");
	  DataOutputStream dataOS = new 
	                   DataOutputStream(new FileOutputStream(fichero));
        String nombres[] = {"Ana","Luis Miguel","Alicia","Pedro","Manuel","Andrés",
                               "Julio","Antonio","María Jesús"};
        int edades[] = {14,15,13,15,16,12,16,14,13};
        for (int i=0;i<edades.length; i++){
              dataOS.writeUTF(nombres[i]); //inserta nombre
              dataOS.writeInt(edades[i]);  //inserta edad
           }     
           dataOS.close();  //cerrar stream 
              System.out.println("Datos escritos en Fichdata");    
              
              
        
	DataInputStream dataIS = new
	                  DataInputStream(new FileInputStream(fichero));
        String n; int e;
        try {
         while (true) {
             n = dataIS.readUTF(); //recupera el nombre
             e = dataIS.readInt(); //recupera la edad
             System.out.println("Nombre: " + n + 
                             ", edad: " + e);        }
         }catch (EOFException eo) {}
        dataIS.close();  //cerrar stream      
              
              
    }
}
