package shirtworld.model;

public class Usuario {
	
	private String nome;
	private int id;
	private String cpf;
	private String email;
	private String senha;
	private int carrinhoId;
	

	public int getCarrinhoId() {
		return carrinhoId;
	}
	public void setCarrinhoId(int carrinhoId) {
		this.carrinhoId = carrinhoId;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}

}