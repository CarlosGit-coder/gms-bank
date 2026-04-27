package com.gmsbank.model;

import jakarta.persistence.*;

@Entity
@Table(name = "tipos_conta")
public class TiposConta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pk_id_tipos_conta")
    private int PK_id_tipos_conta;

    @Column(name = "nome_tipos_conta")
    private String nome_tipos_conta;

    @Column(name = "descricao_tipos_conta")
    private String descricao_tipos_conta;

    @Column(name = "rendimento_anual_tipos_conta")
    private double rendimento_anual_tipos_conta;

    public TiposConta() {

    }

    public TiposConta(int PK_id_tipos_contas, String nome_tipos_conta, String descricao_tipos_conta, double rendimento_anual_tipos_conta) {
        this.PK_id_tipos_conta = PK_id_tipos_conta;
        this.nome_tipos_conta = nome_tipos_conta;
        this.descricao_tipos_conta = descricao_tipos_conta;
        this.rendimento_anual_tipos_conta = rendimento_anual_tipos_conta;
    }

    public int getPK_id_tipos_conta() {
        return PK_id_tipos_conta;
    }

    public void setPK_id_tipos_conta(int PK_id_tipos_conta) {
        this.PK_id_tipos_conta = PK_id_tipos_conta;
    }

    public String getNome_tipos_conta() {
        return nome_tipos_conta;
    }

    public void setNome_tipos_conta(String nome_tipos_conta) {
        this.nome_tipos_conta = nome_tipos_conta;
    }

    public String getDescricao_tipos_conta() {
        return descricao_tipos_conta;
    }

    public void setDescricao_tipos_conta(String descricao_tipos_conta) {
        this.descricao_tipos_conta = descricao_tipos_conta;
    }

    public double getRendimento_anual_tipos_conta() {
        return rendimento_anual_tipos_conta;
    }

    public void setRendimento_anual_tipos_conta(double rendimento_anual_tipos_conta) {
        this.rendimento_anual_tipos_conta = rendimento_anual_tipos_conta;
    }
}
