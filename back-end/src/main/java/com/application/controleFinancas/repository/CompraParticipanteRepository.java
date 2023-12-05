package com.application.controleFinancas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.application.controleFinancas.model.CompraParticipante;

public interface CompraParticipanteRepository extends JpaRepository<CompraParticipante, Long>{
    @Query(
        "SELECT participadas " +
        " FROM CompraParticipante participadas" +
        " WHERE participadas.participante.id = ?1"
    )
    List<CompraParticipante> getParticipadas(Long idParticipante);
}
