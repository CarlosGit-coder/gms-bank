package com.gmsbank.model;

import jakarta.persistence.*;

@Entity
@Table(name = "tipos_transacao")
public class TiposTransacoes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PK_id_tipos_transacao;

    @Column(name = "nome_tipos_transacao")
    private String nome_tipos_transacao;

    @Column(name = "descricao_tipos_transacao")
    private String descricao_tipos_transacao;

    public TiposTransacoes() {

    }

    public TiposTransacoes(int PK_id_tipos_transacao, String nome_tipos_transacao, String descricao_tipos_transacao) {
        this.PK_id_tipos_transacao = PK_id_tipos_transacao;
        this.nome_tipos_transacao = nome_tipos_transacao;
        this.descricao_tipos_transacao = descricao_tipos_transacao;
    }

    public int getPK_id_tipos_transacao() {
        return PK_id_tipos_transacao;
    }

    public void setPK_id_tipos_transacao(int PK_id_tipos_transacao) {
        this.PK_id_tipos_transacao = PK_id_tipos_transacao;
    }

    public String getNome_tipos_transacao() {
        return nome_tipos_transacao;
    }

    public void setNome_tipos_transacao(String nome_tipos_transacao) {
        this.nome_tipos_transacao = nome_tipos_transacao;
    }

    public String getDescricao_tipos_transacao() {
        return descricao_tipos_transacao;
    }

    public void setDescricao_tipos_transacao(String descricao_tipos_transacao) {
        this.descricao_tipos_transacao = descricao_tipos_transacao;
    }
}
