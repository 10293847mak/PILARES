public class Pedido {
    public static void main(String[] args) {

        double costoArticulo = 30.99;

        boolean listoEviar=false;

        if (costoArticulo > 24) {
          System.out.println("El precio es mayor a 24");  
        }
   
        if (listoEviar) {
            System.out.println("Enviado");
        }else{
            System.out.println("Pedido no listo");
        }

        System.out.println("_______________Impares Positivos_________________");

        int contador = 0;

        for (int i = 1; contador < 15; i += 2){
            System.out.println(i);
            contador++;
        }
    }
}
