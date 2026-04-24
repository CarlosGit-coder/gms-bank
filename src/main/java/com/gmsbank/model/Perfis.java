package com.gmsbank.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "perfis")
public class Perfis {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PK_id_perfis;

    @Column(name = "nome_perfis")
    private String nome_perfis;

    @Column(name = "descricao_perfis")
    private String descricao_perfis;

    @Column(name = "data_criacao_perfis")
    private Date data_criacao_perfis;

    public Perfis(){

    }

    public Perfis(int PK_id_perfis, String nome_perfis, String descricao_perfis, Date data_criacao_perfis) {
        this.PK_id_perfis = PK_id_perfis;
        this.nome_perfis = nome_perfis;
        this.descricao_perfis = descricao_perfis;
        this.data_criacao_perfis = data_criacao_perfis;
    }

    public int getPK_id_perfis() {
        return PK_id_perfis;
    }

    public void setPK_id_perfis(int PK_id_perfis) {
        this.PK_id_perfis = PK_id_perfis;
    }

    public String getNome_perfis() {
        return nome_perfis;
    }

    public void setNome_perfis(String nome_perfis) {
        this.nome_perfis = nome_perfis;
    }

    public String getDescricao_perfis() {
        return descricao_perfis;
    }

    public void setDescricao_perfis(String descricao_perfis) {
        this.descricao_perfis = descricao_perfis;
    }

    public Date getData_criacao_perfis() {
        return data_criacao_perfis;
    }

    public void setData_criacao_perfis(Date data_criacao_perfis) {
        this.data_criacao_perfis = data_criacao_perfis;
    }
}
