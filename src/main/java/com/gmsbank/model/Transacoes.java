package com.gmsbank.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "transacoes")
public class Transacoes {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PK_id_transacoes;

    @Column(name = "valor_transacoes")
    private double valor_transacoes;

    @Column(name = "descricao_transacoes")
    private String descricao_transacoes;

    @Column(name = "saldo_apos_transacoes")
    private double saldo_apos_transacoes;

    @Column(name = "realizado_em_transacoes")
    private Date realizado_em_transacoes;

    @ManyToOne
    @JoinColumn(name = "FK_id_conta_origem")
    private Contas FK_id_conta_origem;

    @ManyToOne(optional = true)
    @JoinColumn(name = "FK_id_conta_destino")
    private Contas FK_id_conta_destino;

    @ManyToOne
    @JoinColumn(name = "FK_id_tipos_transacao")
    private TiposTransacoes FK_id_tipos_transacao;

    public Transacoes() {

    }

    public Transacoes(int PK_id_transacoes, double valor_transacoes, String descricao_transacoes, double saldo_apos_transacoes, Date realizado_em_transacoes, Contas FK_id_conta_origem, Contas FK_id_conta_destino, TiposTransacoes FK_id_tipos_transacao) {
        this.PK_id_transacoes = PK_id_transacoes;
        this.valor_transacoes = valor_transacoes;
        this.descricao_transacoes = descricao_transacoes;
        this.saldo_apos_transacoes = saldo_apos_transacoes;
        this.realizado_em_transacoes = realizado_em_transacoes;
        this.FK_id_conta_origem = FK_id_conta_origem;
        this.FK_id_conta_destino = FK_id_conta_destino;
        this.FK_id_tipos_transacao = FK_id_tipos_transacao;
    }

    public int getPK_id_transacoes() {
        return PK_id_transacoes;
    }

    public void setPK_id_transacoes(int PK_id_transacoes) {
        this.PK_id_transacoes = PK_id_transacoes;
    }

    public double getValor_transacoes() {
        return valor_transacoes;
    }

    public void setValor_transacoes(double valor_transacoes) {
        this.valor_transacoes = valor_transacoes;
    }

    public String getDescricao_transacoes() {
        return descricao_transacoes;
    }

    public void setDescricao_transacoes(String descricao_transacoes) {
        this.descricao_transacoes = descricao_transacoes;
    }

    public double getSaldo_apos_transacoes() {
        return saldo_apos_transacoes;
    }

    public void setSaldo_apos_transacoes(double saldo_apos_transacoes) {
        this.saldo_apos_transacoes = saldo_apos_transacoes;
    }

    public Date getRealizado_em_transacoes() {
        return realizado_em_transacoes;
    }

    public void setRealizado_em_transacoes(Date realizado_em_transacoes) {
        this.realizado_em_transacoes = realizado_em_transacoes;
    }

    public Contas getFK_id_conta_origem() {
        return FK_id_conta_origem;
    }

    public void setFK_id_conta_origem(Contas FK_id_conta_origem) {
        this.FK_id_conta_origem = FK_id_conta_origem;
    }

    public Contas getFK_id_conta_destino() {
        return FK_id_conta_destino;
    }

    public void setFK_id_conta_destino(Contas FK_id_conta_destino) {
        this.FK_id_conta_destino = FK_id_conta_destino;
    }

    public TiposTransacoes getFK_id_tipos_transacao() {
        return FK_id_tipos_transacao;
    }

    public void setFK_id_tipos_transacao(TiposTransacoes FK_id_tipos_transacao) {
        this.FK_id_tipos_transacao = FK_id_tipos_transacao;
    }
}
