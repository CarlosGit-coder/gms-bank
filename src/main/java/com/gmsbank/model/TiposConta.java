package com.gmsbank.model;

import jakarta.persistence.*;

@Entity
@Table(name = "tipos_conta")
public class TiposConta {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PK_id_tipos_contas;

    @Column(name = "nome_tipos_conta")
    private String nome_tipos_conta;

    @Column(name = "descricao_tipos_conta")
    private String descricao_tipos_conta;

    @Column(name = "rendimento_anual_tipos_conta")
    private double rendimento_anual_tipos_conta;

    public TiposConta() {

    }

    public TiposConta(int PK_id_tipos_contas, String nome_tipos_conta, String descricao_tipos_conta, double rendimento_anual_tipos_conta) {
        this.PK_id_tipos_contas = PK_id_tipos_contas;
        this.nome_tipos_conta = nome_tipos_conta;
        this.descricao_tipos_conta = descricao_tipos_conta;
        this.rendimento_anual_tipos_conta = rendimento_anual_tipos_conta;
    }
}
