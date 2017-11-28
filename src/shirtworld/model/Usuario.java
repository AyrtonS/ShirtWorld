package shirtworld.model;


public class Usuario extends Identificavel {

	private String login;
	private String senha;
	private boolean admin;
	private String nome;
	private String email;
	private int carrinhoId;
	
	public Usuario() {
	}

	public Usuario(String login, String senha) {
		setLogin(login);
		setSenha(senha);
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String password) {
		this.senha = password;
	}

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getCarrinhoId() {
		return carrinhoId;
	}

	public void setCarrinhoId(int carrinhoId) {
		this.carrinhoId = carrinhoId;
	}
}



