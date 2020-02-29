

public class Ejec {

	
	
	/**
	 * @param args
	 */
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//Array 10 posiciones
		Electrodomestico [] electrodomesticos = new Electrodomestico[10];
		electrodomesticos[0] = new Television();
		electrodomesticos[1] = new Television(219900, 3);
		electrodomesticos[2] = new Television(1999999, "rojo", 'b', 7, 80, true);
		electrodomesticos[3] = new Television();
		electrodomesticos[4] = new Lavadora();
		electrodomesticos[5] = new Lavadora(399999, 45);
		electrodomesticos[6] = new Lavadora(499999, "blanco", 'c', 50, 40);
		electrodomesticos[7] = new Electrodomestico();
		electrodomesticos[8] = new Electrodomestico(40000, 2);
		electrodomesticos[9] = new Electrodomestico(200000, 25);
		
		/**
		 * recorre Array
		 */
		System.out.println("*******************COSTOS FINALES********************");
		System.out.println(" ");
		System.out.println("*******************COSTOS FINALES TV********************");
		for (int i = 0; i < 4; i++) {
			
			System.out.println("Costo final de " + electrodomesticos[i].getClass().getSimpleName()+ " es €" +electrodomesticos[i].precioFinal());
		
		/**
		 * recorre Array	
		 */
		}
		System.out.println(" ");
		System.out.println("*******************COSTOS FINALES LAVADORAS********************");
		for (int i =4 ; i <6; i++) {
			System.out.println("Costo final de " + electrodomesticos[i].getClass().getSimpleName()+ " es €" +electrodomesticos[i].precioFinal());
		}
		
		/**
		 * recorre Array
		 */
		System.out.println(" ");
		System.out.println("*******************COSTOS FINALES ELECTRODOMESTICOS********************");
		for (int i =4 ; i <6; i++) {
			System.out.println("Costo final de " + electrodomesticos[i].getClass().getSimpleName()+ " es €" +electrodomesticos[i].precioFinal());
		}
		
		/**
		 * recorre Array
		 * Calcula valores totales
		 */
		System.out.println("");
		
		float precioElectrodomesticos = 0;
		float precioLavadoras = 0;
		float precioTelevisores = 0;
		
		for (int i = 0; i < electrodomesticos.length; i++) {
			if (electrodomesticos[i] instanceof Electrodomestico) {
				precioElectrodomesticos = precioElectrodomesticos + electrodomesticos[i].precioFinal();
			}
			if (electrodomesticos[i] instanceof Lavadora) {
				precioLavadoras = precioLavadoras + electrodomesticos[i].precioFinal();
			}
			if (electrodomesticos[i] instanceof Television) {
				precioTelevisores = precioTelevisores + electrodomesticos[i].precioFinal();
			}
			
		}
		System.out.println("***VALORES TOTALES***");
		System.out.println(" ");
		System.out.println("Valor Total Electrodomesticos: €" + precioElectrodomesticos);
		System.out.println("");
		System.out.println("Valor Total €" + precioLavadoras);
		System.out.println("");
		System.out.println("Valor Total Televisores: €" + precioTelevisores);
		
	}

}

