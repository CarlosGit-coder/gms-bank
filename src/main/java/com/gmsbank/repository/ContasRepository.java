package com.gmsbank.repository;

import com.gmsbank.model.Contas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContasRepository extends JpaRepository<Contas, Integer> {
}
