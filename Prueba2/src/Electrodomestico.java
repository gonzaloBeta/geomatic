
/**
 * Esta clase genera metodos para calcular precios de electrodomesticos
 * @author Gonzalo Escobar
 *
 */
/**
 * @author Alumno
 *
 */
public class Electrodomestico {
	
	/**
	 * Declaracion de atributos
	 
	 */
	private int precioBase;
	private String color;
	private char consumoEnergetico;
	private float peso;
	
	/**
	 * Declaracion de constantes
	 */
	public static final String COLORDEF ="blanco";
	public static final int PRECIOBDEF =100000;
	public static final float PESODEF = 5;
	public static final char CONSUMOENERGDEF =70;
	
	
	/**
	 * Constructor referenciamos atributos de la clase
	 */
	public Electrodomestico() {
		this.color = COLORDEF;
		this.precioBase = PRECIOBDEF;
		this.peso = PESODEF;
		this.consumoEnergetico = CONSUMOENERGDEF;
	}
	/**
	 * Constructor referenciamos atributos de la clase
	 */
	public Electrodomestico(int precioBase, float peso) {
		this();
		this.precioBase = precioBase;
		this.peso = peso;
	}
	/**
	 * asigna valor de consumo energetico y color
	 */
	/**
	 * @param precioBase
	 * @param color
	 * @param consumoEnergetico
	 * @param peso
	 */
	public Electrodomestico(int precioBase, String color, char consumoEnergetico, float peso) {
		this(precioBase, peso);
		if(comprobarConsumo(consumoEnergetico)) {
			this.consumoEnergetico = consumoEnergetico;
		}else {
			this.consumoEnergetico = CONSUMOENERGDEF;
		}
		if(comprobarColor(color)) {
			this.color = color;
		}else {
			this.color = COLORDEF;
		}
	}
	/**
	 * Array designa colores
	 * 
	 */
	String [] col = new String [5];{
	col[0] = "blanco";
	col[1] = "rojo";
	col[2] = "negro";
	col[3] = "gris";
	col[4] = "azul";
	
	}
	
	//Getters and Setters
	/**
	 * @return
	 */
	public int getPrecioBase() {
		return precioBase;
	}

	/**
	 * @param precioBase
	 */
	public void setPrecioBase(int precioBase) {
		this.precioBase = precioBase;
	}

	/**
	 * @return
	 */
	public String getColor() {
		return color;
	}

	/**
	 * @param color
	 */
	public void setColor(String color) {
		this.color = color;
	}

	/**
	 * @return
	 */
	public char getConsumoEnergetico() {
		return consumoEnergetico;
	}

	/**
	 * @param consumoEnergetico
	 */
	public void setConsumoEnergetico(char consumoEnergetico) {
		this.consumoEnergetico = consumoEnergetico;
	}

	/**
	 * @return
	 */
	public float getPeso() {
		
		return peso;
	}

	/**
	 * @param peso
	 */
	public void setPeso(float peso) {
		this.peso = peso;
	}

	/**
	 * @return
	 */
	public static String getColordef() {
		return COLORDEF;
	}

	/**
	 * @return
	 */
	public static int getPreciobdef() {
		return PRECIOBDEF;
	}

	/**
	 * @return
	 */
	public static float getPesodef() {
		return PESODEF;
	}

	/**
	 * @return
	 */
	public static char getConsumoenergdef() {
		return CONSUMOENERGDEF;
	}

	/**
	 * @param l
	 * @return
	 */
	public boolean comprobarConsumo(char l) {
		if((l >= 65 && l<= 70) || (l>= 97 && l <= 102) ) {
			return true;
		}
		return false;
	}
	
	/**
	 * @param col2
	 * @return
	 */
	public boolean comprobarColor(String col2) {
		double b = 0;
		
		for (int i = 0; i < col.length; i++) {
			if(col[i].equals(col2));
			b = 1;
		}
		if (b == 1) {
			return true;
		}else {
			return false;
		}
	}
	/**
	 * Calcula precio segun precio y tamaño
	 * @return
	 */
	public float precioFinal() {
		int precioElectrodomestico = 0;
		int precioConsumo = 0;
		int precioPeso = 0;
		if(this.consumoEnergetico == 65 || this.consumoEnergetico == 97) {
			precioConsumo = 100; 
		}else if (this.consumoEnergetico == 66 || this.consumoEnergetico == 98) {
			precioConsumo = 80;
		}else if (this.consumoEnergetico == 67 || this.consumoEnergetico == 99) {
			precioConsumo = 60;
		}else if (this.consumoEnergetico == 68 || this.consumoEnergetico == 100) {
			precioConsumo = 50;
		}else if (this.consumoEnergetico == 69 || this.consumoEnergetico == 101) {
			precioConsumo = 30;
		}else if (this.consumoEnergetico == 70 || this.consumoEnergetico == 102) {
			precioConsumo = 10;
		}
		
		if(this.peso >= 0 && this.peso <= 19) {
			precioPeso = 10;
		}else if(this.peso >= 20 && this.peso <= 49) {
			precioPeso = 50;
		}else if(this.peso >= 50 && this.peso <= 79) {
			precioPeso = 80;
		}else if (this.peso >=80) {
			precioPeso = 100;
		}
		precioElectrodomestico = this.precioBase + precioConsumo + precioPeso;
		return precioElectrodomestico;
	}

	@Override
	public String toString() {
		return "Electrodomestico [precioBase=" + precioBase + ", color=" + color + ", consumoEnergetico="
				+ consumoEnergetico + ", peso=" + peso + ", precioFinal()=" + precioFinal() + "]";
	}

}


