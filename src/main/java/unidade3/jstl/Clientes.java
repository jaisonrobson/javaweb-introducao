package unidade3.jstl;

import java.util.ArrayList;
import java.util.List;

public class Clientes {
	private List<String> nomes = new ArrayList<>();
	
	public Clientes() {
		nomes.add("Fabricio");
		nomes.add("Joselino");
		nomes.add("Cassandra");
	}

	public List<String> getNomes() {
		return nomes;
	}

	public void setNomes(List<String> nomes) {
		this.nomes = nomes;
	}	
}
