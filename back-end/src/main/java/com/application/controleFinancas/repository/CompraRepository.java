package com.application.controleFinancas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.application.controleFinancas.model.Compra;

public interface CompraRepository extends JpaRepository<Compra, Long>{
    
}
