/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Maria
 */

public class Mensagem {
    private Long id;
//    @NotNull(message="{mensagem.nome.vazia}")
//    @Size(min=5, message="{mensagem.nome.pequena}")
    private String nome;
    private String telefone;
//    @NotNull(message="{mensagem.email.vazia}")
    private String email;
//    @NotNull(message="{mensagem.assunto.vazia}")
    private int assunto;
//    @NotNull(message="{mensagem.mensagem.vazia}")
    private String mensagem;

    public Mensagem() {
    }
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAssunto() {
        return assunto;
    }

    public void setAssunto(int assunto) {
        this.assunto = assunto;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }
}
