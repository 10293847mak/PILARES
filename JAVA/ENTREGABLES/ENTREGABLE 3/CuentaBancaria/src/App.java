public class App {
    public static void main(String[] args){

        double saldo = 1000.75;

        double cantidadARetirar= 250;

        double saldoActualizado = saldo - cantidadARetirar;
        
        double cantidadParaCadaAmigo = saldoActualizado / 3;

        boolean puedeComprarTicket = false;

        if (cantidadARetirar >= 250) {
              puedeComprarTicket = true;
              System.out.println(puedeComprarTicket);
        }
        
          System.out.println("Le di a cada amigo " + cantidadParaCadaAmigo);

  }
}
