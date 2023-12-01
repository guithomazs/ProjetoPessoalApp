package com.application.controleFinancas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.application.controleFinancas.model.CompraParticipante;

public interface CompraParticipanteRepository extends JpaRepository<CompraParticipante, Long>{
    
}
