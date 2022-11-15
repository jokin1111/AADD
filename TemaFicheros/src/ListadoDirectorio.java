/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
/**
 *
 * @author joaquin.antequera
 */
public class ListadoDirectorio {
    
    public static void main(String[] args){
        String ruta="C:\\Users\\joaquin.antequera\\Desktop\\dam\\AAD";
        if(args.length>=1) ruta=args[0];
        File fich=new File(ruta);        
        if(!fich.exists()) {
            System.out.println("No existe el fichero o directorio ("+ruta+").");
        }
        else {
            if(fich.isFile()) {
                System.out.println(ruta+" es un fichero.");
            }
            else {
                System.out.println(ruta+" es un directorio. Contenidos: "+fich.getName());
                File[] ficheros=fich.listFiles(); // Ojo, ficheros o directorios
                for(File f : ficheros) {
                    String textoDescr=f.isDirectory() ? "/" :
                            f.isFile() ? "_" : "?";
                    System.out.println("("+textoDescr+") "+f.getName());
                }
            }
        }
    }
}
