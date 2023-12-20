import java.util.Scanner;

public class Usuario {


    public static void main(String[] args){
        Scanner datos = new Scanner(System.in);
        String nombre;
        int edad;
        int nCaracteres;

        System.out.print("Ingresa tu nombre completo:");
        nombre = datos.nextLine();

        System.out.println(" Ingresa tu edad:");
        edad = datos.nextInt();
        datos.nextLine();

        if(edad > 18){
            System.out.println("Tu nombre es " + nombre + ", tienes " + edad + " años y eres mayor de edad");
        } else {
            System.out.println("Tu nombre es " + nombre + ", tienes " + edad + " años y eres menor de edad");
        }
            nCaracteres = nombre.length();
            System.out.println("Tu nombre tiene " + nCaracteres + " caracteres.");
        datos.close(); 
    }
    
}