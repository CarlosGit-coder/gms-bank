package com.gmsbank.repository;

import com.gmsbank.model.TiposConta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TiposContaRepository extends JpaRepository<TiposConta, Integer> {
}
