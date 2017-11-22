package shirtworld.model;

public class Produto extends Identificavel{

	private String nome;
	private float preco;

	public Produto(String nome, float preco) {
		setNome(nome);
		setPreco(preco);
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

}
