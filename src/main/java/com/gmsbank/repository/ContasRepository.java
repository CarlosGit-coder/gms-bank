package com.gmsbank.repository;

import com.gmsbank.model.Contas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ContasRepository extends JpaRepository<Contas, Long> {

    @Query(value = "SELECT * FROM vw_relatorio_maiores_saldos", nativeQuery = true)
    List<Object[]> buscarMaioresSaldos();
}
