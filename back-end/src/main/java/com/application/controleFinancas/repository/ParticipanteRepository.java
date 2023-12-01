package com.application.controleFinancas.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.application.controleFinancas.model.Participante;

public interface ParticipanteRepository extends JpaRepository<Participante, Long> {
    
}
