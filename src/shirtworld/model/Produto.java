package shirtworld.model;


public class Produto extends Identificavel{

	private String nome;
	private float preco;
	private String descricao;
	private int quantidade;
	
	
	public Produto(String nome, float preco, String descricao) {
		setNome(nome);
		setPreco(preco);
		setDescricao(descricao);
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

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}


}
