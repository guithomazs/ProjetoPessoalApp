package com.application.controleFinancas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.controleFinancas.model.CompraParticipante;
import com.application.controleFinancas.repository.CompraParticipanteRepository;

@Service
public class CompraParticipanteService implements IService<CompraParticipante> {

    @Autowired
    private CompraParticipanteRepository repo;

    @Override
    public List<CompraParticipante> get() {
        return repo.findAll();
    }

    @Override
    public CompraParticipante get(Long id) {
        return repo.findById(id).orElse(null);
    }

    @Override
    public List<CompraParticipante> get(String termoBusca) {
        throw new Error("Method not implemented");
    }

    @Override
    public CompraParticipante save(CompraParticipante objeto) {
        return repo.save(objeto);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public List<CompraParticipante> getAll() {
        return repo.findAll();
    }
    
}
