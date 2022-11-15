
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
public class EscribirFichObject {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        Persona persona;//defino variable persona
        File fichero = new File("c:\\clase\\accdat\\FichPersona.dat");
        FileOutputStream fileout = new FileOutputStream(fichero,true);    ObjectOutputStream dataOS = new ObjectOutputStream(fileout);  
        String nombres[] = {"Ana","Luis Miguel","Alicia","Pedro","Manuel","Andrés",
                       "Julio","Antonio","María Jesús"};			   
        int edades[] = {14,15,13,15,16,12,16,14,13};
        System.out.println("GRABO LOS DATOS DE PERSONA.");      
        for (int i=0;i<edades.length; i++){ //recorro los arrays    
        persona= new Persona(nombres[i],edades[i]); //creo la persona	  
	  dataOS.writeObject(persona); //escribo la persona en el fichero
	  System.out.println("GRABO LOS DATOS DE PERSONA.");  }     
          dataOS.close();
    }
    
}
