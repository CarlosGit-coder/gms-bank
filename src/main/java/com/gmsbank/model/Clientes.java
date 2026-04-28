package com.gmsbank.model;

import jakarta.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "clientes")
public class Clientes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long PK_id_clientes;

    @Column(name = "nome_clientes")
    private String nome_clientes;

    @Column(name = "cpf_clientes")
    private String cpf_clientes;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "data_nascimento_clientes")
    private Date data_nascimento_clientes;

    @Column(name = "telefone_clientes")
    private String telefone_clientes;

    @Column(name = "email_clientes")
    private String email_clientes;

    @Column(name = "endereco_clientes")
    private String endereco_clientes;

    @Column(name = "ativo_clientes")
    private Boolean ativo_clientes;

    @Column(name = "criado_em_clientes")
    private Date criado_em_clientes;

    public Clientes(){

    }

    public Clientes(Long PK_id_clientes, String nome_clientes, String cpf_clientes, Date data_nascimento_clientes, String telefone_clientes, String email_clientes, String endereco_clientes, Boolean ativo_clientes, Date criado_em_clientes) {
        this.PK_id_clientes = PK_id_clientes;
        this.nome_clientes = nome_clientes;
        this.cpf_clientes = cpf_clientes;
        this.data_nascimento_clientes = data_nascimento_clientes;
        this.telefone_clientes = telefone_clientes;
        this.email_clientes = email_clientes;
        this.endereco_clientes = endereco_clientes;
        this.ativo_clientes = ativo_clientes;
        this.criado_em_clientes = criado_em_clientes;
    }

    public Long getPK_id_clientes() {
        return PK_id_clientes;
    }

    public void setPK_id_clientes(Long PK_id_clientes) {
        this.PK_id_clientes = PK_id_clientes;
    }

    public String getNome_clientes() {
        return nome_clientes;
    }

    public void setNome_clientes(String nome_clientes) {
        this.nome_clientes = nome_clientes;
    }

    public String getCpf_clientes() {
        return cpf_clientes;
    }

    public void setCpf_clientes(String cpf_clientes) {
        this.cpf_clientes = cpf_clientes;
    }

    public Date getData_nascimento_clientes() {
        return data_nascimento_clientes;
    }

    public void setData_nascimento_clientes(Date data_nascimento_clientes) {
        this.data_nascimento_clientes = data_nascimento_clientes;
    }

    public String getTelefone_clientes() {
        return telefone_clientes;
    }

    public void setTelefone_clientes(String telefone_clientes) {
        this.telefone_clientes = telefone_clientes;
    }

    public String getEmail_clientes() {
        return email_clientes;
    }

    public void setEmail_clientes(String email_clientes) {
        this.email_clientes = email_clientes;
    }

    public String getEndereco_clientes() {
        return endereco_clientes;
    }

    public void setEndereco_clientes(String endereco_clientes) {
        this.endereco_clientes = endereco_clientes;
    }

    public Boolean getAtivo_clientes() {
        return ativo_clientes;
    }

    public void setAtivo_clientes(Boolean ativo_clientes) {
        this.ativo_clientes = ativo_clientes;
    }

    public Date getCriado_em_clientes() {
        return criado_em_clientes;
    }

    public void setCriado_em_clientes(Date criado_em_clientes) {
        this.criado_em_clientes = criado_em_clientes;
    }
}
