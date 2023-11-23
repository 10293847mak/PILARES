import java.util.Scanner;

public class DiaDeLaSemana {
    public static void main(String[] args) {
        // Importa la clase Scanner para la lectura de datos
        Scanner semana = new Scanner(System.in);

        // Crea una variable dia de tipo entero
        int dia;

        // Imprime el texto y hace la lectura del dato desde teclado
        System.out.println("Introduce un número del 1 al 7 para conocer el día de la semana:");
        dia = semana.nextInt();

        // Crea una estructura switch-case
        switch(dia) {
            case 1:
                System.out.println("Lunes");
                break;
            case 2:
                System.out.println("Martes");
                break;
            case 3:
                System.out.println("Miércoles");
                break;
            case 4:
                System.out.println("Jueves");
                break;
            case 5:
                System.out.println("Viernes");
                break;
            case 6:
                System.out.println("Sábado");
                break;
            case 7:
                System.out.println("Domingo");
                break;
            default:
                System.out.println("Número no válido");
                break;
        }
        // Cierra el objeto Scanner
        semana.close();
    }
}

