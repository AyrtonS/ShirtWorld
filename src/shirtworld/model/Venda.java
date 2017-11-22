package shirtworld.model;

import java.util.Date;
import java.util.Map;
import java.util.Map.Entry;

public class Venda extends Identificavel {

	private Cliente cliente;
	private Map<Produto, Integer> itens;
	private Date data;

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Map<Produto, Integer> getItens() {
		return itens;
	}

	public void setItens(Map<Produto, Integer> produtos) {
		this.itens = produtos;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
	
	public float getValor(){
		float valor = 0;
		for(Entry<Produto, Integer> item: itens.entrySet()){
			float precoProduto = item.getKey().getPreco();
			Integer quantidadeProoduto = item.getValue();
			valor += precoProduto * quantidadeProoduto;
		}			
		return valor;
	}

}
