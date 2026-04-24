package com.gmsbank.repository;

import com.gmsbank.model.Perfis;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PerfisRepository extends JpaRepository<Perfis, Integer> {
}
