import java.util.Scanner;

public class Edad {
    public static void main(String[] args) {
        // Crear un objeto Scanner para leer la entrada del usuario
        Scanner scanner = new Scanner(System.in);

        // Preguntar al usuario su edad
        System.out.print("Por favor, introduce tu edad: ");
        
        // Leer la edad ingresada por el usuario
        int edad = scanner.nextInt();

        // Cerrar el objeto Scanner
        scanner.close();

        // Verificar si la edad es mayor o igual a 18
        if (edad >= 18) {
            System.out.println("Eres mayor de edad.");
        } else {
            System.out.println("No eres mayor de edad.");
        }
    }
}
