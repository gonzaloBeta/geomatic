

public class Lavadora extends Electrodomestico {
	
	/**
	 * declara atributos
	 */
	private int carga;
	public static final int CARGADEF = 5;
	
	/**
	 * hereda atibutos de superclase
	 */
	public Lavadora() {
		super();
		this.carga = CARGADEF;
	}
	//Constructor precio y peso
	/**
	 * @param precioBase
	 * @param peso
	 */
	public Lavadora(int precioBase, float peso) {
		this();
		this.getPrecioBase();
		this.getPeso();
	}
	/**
	 * Constructor carga (se llama al constructor de la clase padre)
	 * @param precioBase
	 * @param color
	 * @param consumoEnergetico
	 * @param peso
	 * @param carga
	 */
	public Lavadora(int precioBase, String color, char consumoEnergetico, float peso, int carga) {
		super(precioBase, color, consumoEnergetico, peso);
		this.carga = carga;
	}
	/**
	 * Metodo get carga
	 * @return
	 */
	protected int getCarga() {
		return carga;
	}
	/**Metodo Precio Final
	 */
	public float precioFinal() {
		int precioCarga = 0;
		float precioLavadora = 0;
		if (this.carga > 30) {
			precioCarga = 50;
		}else {
			precioCarga = 0;
		}
		
		precioLavadora = super.precioFinal() + precioCarga;
		return precioLavadora;
	}

	/**
	 *
	 */
	@Override
	public String toString() {
		return "Lavadora [carga=" + carga + ", precioFinal()=" + precioFinal() + ", toString()=" + super.toString()
				+ "]";
	}



}
