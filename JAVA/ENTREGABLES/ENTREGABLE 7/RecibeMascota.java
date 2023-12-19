import java.util.Scanner;
import java.util.ArrayList;

public class RecibeMascota {

    class Perros{
            private String nombre;
            private int edad;
            private String raza;
            private String tamano;
            private String nom_dueno;   
            
            public Perros(String nombre, int edad, String raza, String tamano, String nom_dueno){
                this.nombre = nombre;
                this.edad = edad;
                this.raza = raza;
                this.tamano = tamano;
                this.nom_dueno = nom_dueno;
            }

            public String Cadena (){
                return "Nombre del perro: " + nombre + ", Edada: " + edad + ", Raza: " + raza + ", tamaño: " + tamano + ", Nombre del dueño: " + nom_dueno;
            }
    }
   
    public static void main (String[] args){
        Scanner scanner = new Scanner(System.in);
        ArrayList<Perros> listaPerros = new ArrayList<>();

        int num_perros = 0;

        System.out.println("Ingresa el numero de perrors a registrar");
        num_perros = scanner.nextInt();

        for (int i = 0; i <= num_perros; i++){
            System.out.println("Agrega el nombre del Perro:");
            String perroNombre = scanner.nextLine();

            System.out.println("Agrega la edad del perro:");
            int perroEdad = scanner.nextInt();

            System.out.println("Agrega raza del Perro:");
            String perroRaza = scanner.nextLine();

            System.out.println("Agrega tamaño del Perro:");
            String perroTamano = scanner.nextLine();

            System.out.println("Agrega nombre del dueño del Perro:");
            String perroNom_dueno = scanner.nextLine();

            Perros nuevoPerro = new Perros(perroNombre, perroEdad, perroRaza, perroTamano, perroNom_dueno);
            listaPerros.add(nuevoPerro);
        }

         scanner.close();
    }


}