package com.gmsbank.service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.math.BigDecimal;

@Service
public class BancoRoutineService {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public void executarDeposito(Long contaId, BigDecimal valor, String descricao) {
        entityManager.createNativeQuery(
                        "CALL pr_realizar_deposito(:conta, :valor, :descricao)")
                .setParameter("conta", contaId)
                .setParameter("valor", valor)
                .setParameter("descricao", descricao)
                .executeUpdate();
    }

    @Transactional
    public void executarSaque(Long contaId, BigDecimal valor, String descricao) {
        entityManager.createNativeQuery(
                        "CALL pr_realizar_saque(:conta, :valor, :descricao)")
                .setParameter("conta", contaId)
                .setParameter("valor", valor)
                .setParameter("descricao", descricao)
                .executeUpdate();
    }

    @Transactional
    public void executarTransferencia(Long contaOrigemId, Long contaDestinoId, BigDecimal valor, String descricao) {
        entityManager.createNativeQuery(
                        "CALL pr_realizar_transferencia(:origem, :destino, :valor, :descricao)")
                .setParameter("origem", contaOrigemId)
                .setParameter("destino", contaDestinoId)
                .setParameter("valor", valor)
                .setParameter("descricao", descricao)
                .executeUpdate();
    }
}