

public class Television extends Electrodomestico {
	
	/**
	 * declara atributos
	 */
	private int resolucion;
	private boolean sintonizador;
	public static final int RESOLUCIONDEF = 20;
	public static final boolean SINTONIZADORDEF = false; 
	
	/**
	 * Constructor
	 */
	
	public Television() {
		super();
		this.resolucion = RESOLUCIONDEF;
	}
	/**
	 * Constructor precio y peso
	 * @param precioBase
	 * @param peso
	 */
	public Television(int precioBase, int peso) {
		this();
		this.getPrecioBase();
		this.getPeso();
	}
	
	/**
	 * Constructor con la resolución, sintonizador TDT y el resto de atributos heredados
	 * @param precioBase
	 * @param color
	 * @param consumoEnergetico
	 * @param peso
	 * @param resolucion
	 * @param sintonizador
	 */
	public Television(int precioBase, String color, char consumoEnergetico, int peso, int resolucion, boolean sintonizador) {
		super(precioBase, color, consumoEnergetico, peso);
		this.resolucion = resolucion;
		this.sintonizador = sintonizador;
	}
	/**Método get de resolución y sintonizador TDT
	 * @return
	 */
	protected int getResolucion() {
		return resolucion;
	}

	/**
	 * @return
	 */
	protected boolean Sintonizador() {
		return sintonizador;
	}
	
	/** Metodo Precio Final
	 *
	 */
	public float precioFinal() {
		float precioResolucion = 0;
		float precioSintonizador = 0;
		float precioTelevision = 0;
		if(this.resolucion > 40) {
			precioResolucion = (float)((super.getPrecioBase())*0.3);
		}
		if(this.Sintonizador()) {
			precioSintonizador = 50;
		}
		
		precioTelevision = super.getPrecioBase()+ precioResolucion + precioSintonizador;
		return precioTelevision;
	}

	@Override
	public String toString() {
		return "Television [resolucion=" + resolucion + ", sintonizador=" + sintonizador + ", precioFinal()="
				+ precioFinal() + ", toString()=" + super.toString() + "]";
	}



}

