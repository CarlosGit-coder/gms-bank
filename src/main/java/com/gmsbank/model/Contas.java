package com.gmsbank.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "contas")
public class Contas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PK_id_contas;

    @Column(name = "numero_contas")
    private String numero_contas;

    @Column(name = "saldo_contas")
    private double saldo_contas;

    @Column(name = "limite_contas")
    private double limite_contas;

    @Column(name = "ativa_conta")
    private Boolean ativa_conta;

    @Column(name = "criado_em_contas")
    private Date criado_em_contas;

    @ManyToOne
    @JoinColumn(name = "FK_tipos_contas")
    private TiposConta FK_tipos_contas;

    @ManyToOne
    @JoinColumn(name = "FK_id_clientes")
    private Clientes FK_id_clientes;

    public  Contas() {

    }

    public Contas(int PK_id_contas, String numero_contas, double saldo_contas, double limite_contas, Boolean ativa_conta, Date criado_em_contas, TiposConta FK_tipos_contas, Clientes FK_id_clientes) {
        this.PK_id_contas = PK_id_contas;
        this.numero_contas = numero_contas;
        this.limite_contas = limite_contas;
        this.ativa_conta = ativa_conta;
        this.criado_em_contas = criado_em_contas;
        this.FK_tipos_contas = FK_tipos_contas;
        this.FK_id_clientes = FK_id_clientes;
    }

    public int getPK_id_contas() {
        return PK_id_contas;
    }

    public void setPK_id_contas(int PK_id_contas) {
        this.PK_id_contas = PK_id_contas;
    }

    public String getNumero_contas() {
        return numero_contas;
    }

    public void setNumero_contas(String numero_contas) {
        this.numero_contas = numero_contas;
    }

    public double getSaldo_contas() {
        return saldo_contas;
    }

    public void setSaldo_contas(double saldo_contas) {
        this.saldo_contas = saldo_contas;
    }

    public double getLimite_contas() {
        return limite_contas;
    }

    public void setLimite_contas(double limite_contas) {
        this.limite_contas = limite_contas;
    }

    public Boolean getAtiva_conta() {
        return ativa_conta;
    }

    public void setAtiva_conta(Boolean ativa_conta) {
        this.ativa_conta = ativa_conta;
    }

    public Date getCriado_em_contas() {
        return criado_em_contas;
    }

    public void setCriado_em_contas(Date criado_em_contas) {
        this.criado_em_contas = criado_em_contas;
    }

    public TiposConta getFK_tipos_contas() {
        return FK_tipos_contas;
    }

    public void setFK_tipos_contas(TiposConta FK_tipos_contas) {
        this.FK_tipos_contas = FK_tipos_contas;
    }

    public Clientes getFK_id_clientes() {
        return FK_id_clientes;
    }

    public void setFK_id_clientes(Clientes FK_id_clientes) {
        this.FK_id_clientes = FK_id_clientes;
    }
}
