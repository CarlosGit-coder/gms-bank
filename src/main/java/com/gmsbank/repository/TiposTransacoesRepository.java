package com.gmsbank.repository;

import com.gmsbank.model.TiposTransacoes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TiposTransacoesRepository extends JpaRepository<TiposTransacoes, Integer> {
}
