package com.gmsbank.repository;

import com.gmsbank.model.Clientes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClientesRepository extends JpaRepository<Clientes, Integer> {

@Query(value = """
 SELECT c.nome_clientes, co.numero_contas, co.saldo_contas
    FROM clientes c
    INNER JOIN contas co ON c.PK_id_clientes = co.FK_id_clientes
    """, nativeQuery = true)
    List<Object[]> buscarClientesComContas();
}
