package com.gmsbank.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "usuarios")
public class Usuarios {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PK_id_usuarios;

    @Column(name = "nome_usuarios")
    private String nome_usuarios;

    @Column(name = "email_usuarios")
    private String email_usuarios;

    @Column(name = "cpf_usuarios")
    private String cpf_usuarios;

    @Column(name = "senha_hash")
    private String senha_hash;

    @Column(name = "ativo_usuarios")
    private Boolean ativo_usuarios;

    @Column(name = "ultimo_login")
    private Date ultimo_login;

    @Column(name = "criado_em_usuarios")
    private Date criado_em_usuarios;

    @ManyToOne
    @JoinColumn(name = "FK_perfil_id")
    private Perfis FK_perfil_id;

    public Usuarios(){

    }

    public Usuarios(int PK_id_usuarios, String nome_usuarios, String email_usuarios, String cpf_usuarios, String senha_hash, Boolean ativo_usuarios, Date ultimo_login, Date criado_em_usuarios, Perfis FK_perfil_id){
        this.PK_id_usuarios = PK_id_usuarios;
        this.nome_usuarios = nome_usuarios;
        this.cpf_usuarios = cpf_usuarios;
        this.senha_hash = senha_hash;
        this.ativo_usuarios = ativo_usuarios;
        this.criado_em_usuarios = criado_em_usuarios;
        this.FK_perfil_id = FK_perfil_id;
    }


    public int getPK_id_usuarios() {
        return PK_id_usuarios;
    }

    public void setPK_id_usuarios(int PK_id_usuarios) {
        this.PK_id_usuarios = PK_id_usuarios;
    }

    public String getNome_usuarios() {
        return nome_usuarios;
    }

    public void setNome_usuarios(String nome_usuarios) {
        this.nome_usuarios = nome_usuarios;
    }

    public String getEmail_usuarios() {
        return email_usuarios;
    }

    public void setEmail_usuarios(String email_usuarios) {
        this.email_usuarios = email_usuarios;
    }

    public String getCpf_usuarios() {
        return cpf_usuarios;
    }

    public void setCpf_usuarios(String cpf_usuarios) {
        this.cpf_usuarios = cpf_usuarios;
    }

    public String getSenha_hash() {
        return senha_hash;
    }

    public void setSenha_hash(String senha_hash) {
        this.senha_hash = senha_hash;
    }

    public Boolean getAtivo_usuarios() {
        return ativo_usuarios;
    }

    public void setAtivo_usuarios(Boolean ativo_usuarios) {
        this.ativo_usuarios = ativo_usuarios;
    }

    public Date getUltimo_login() {
        return ultimo_login;
    }

    public void setUltimo_login(Date ultimo_login) {
        this.ultimo_login = ultimo_login;
    }

    public Date getCriado_em_usuarios() {
        return criado_em_usuarios;
    }

    public void setCriado_em_usuarios(Date criado_em_usuarios) {
        this.criado_em_usuarios = criado_em_usuarios;
    }

    public Perfis getFK_perfil_id() {
        return FK_perfil_id;
    }

    public void setFK_perfil_id(Perfis FK_perfil_id) {
        this.FK_perfil_id = FK_perfil_id;
    }
}
