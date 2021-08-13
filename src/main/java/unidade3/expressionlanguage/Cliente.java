package unidade3.expressionlanguage;

public class Cliente {
	private Long Cpf;
	private String email, nome;
	
	public Long getCpf() {
		return Cpf;
	}
	public void setCpf(Long cpf) {
		Cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}
