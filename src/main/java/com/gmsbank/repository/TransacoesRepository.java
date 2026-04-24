package com.gmsbank.repository;

import com.gmsbank.model.Transacoes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TransacoesRepository extends JpaRepository<Transacoes, Integer> {
}
