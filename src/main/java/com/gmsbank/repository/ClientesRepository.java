package com.gmsbank.repository;

import com.gmsbank.model.Clientes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClientesRepository extends JpaRepository<Clientes, Long> {

    @Query(value = """

            SELECT c.nome_clientes, co.numero_contas, co.saldo_contas
    FROM clientes c
    INNER JOIN contas co ON c.pk_id_clientes = co.fk_id_clientes
    """, nativeQuery = true)
    List<Object[]> buscarClientesComContas();

    @Query(value = """
    SELECT c.nome_clientes, co.numero_contas, co.saldo_contas, t.valor_transacoes
    FROM clientes c
    INNER JOIN contas co ON c.pk_id_clientes = co.fk_id_clientes
    LEFT JOIN transacoes t ON co.pk_id_contas = t.fk_id_conta_origem
    """, nativeQuery = true)
    List<Object[]> buscarClientesComContasETransacoes();
}
