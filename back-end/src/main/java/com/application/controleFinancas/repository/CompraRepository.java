package com.application.controleFinancas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.application.controleFinancas.model.Compra;

public interface CompraRepository extends JpaRepository<Compra, Long>{
    
    @Query("SELECT compra FROM Compra compra WHERE fiador.id = ?1")
    List<Compra> getPagas(Long idParticipante);
}
