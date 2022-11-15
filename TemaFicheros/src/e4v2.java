
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
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
public class e4v2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException{
        File fichero = new File("C:\\dam\\AAD\\ejercicio3.docx");      
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
