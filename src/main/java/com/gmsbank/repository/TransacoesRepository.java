package com.gmsbank.repository;

import com.gmsbank.model.Transacoes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface TransacoesRepository extends JpaRepository<Transacoes, Integer> {

    @Query(value = "SELECT * FROM vw_relatorio_transacoes", nativeQuery = true)
    List<Object[]> buscarRelatorioTransacoes();

    @Query(value = "SELECT * FROM vw_dashboard_ultimas_transacoes", nativeQuery = true)
    List<Object[]> buscarUltimasTransacoes();

    @Query(value = "SELECT fn_volume_total_transacoes()", nativeQuery = true)
    BigDecimal buscarVolumeTotalTransacoes();

}
