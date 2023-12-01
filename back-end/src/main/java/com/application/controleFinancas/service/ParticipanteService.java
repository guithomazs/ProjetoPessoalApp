package com.application.controleFinancas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.controleFinancas.model.Participante;
import com.application.controleFinancas.repository.ParticipanteRepository;

@Service
public class ParticipanteService implements IService<Participante> {

    @Autowired
    private ParticipanteRepository repo;

    @Override
    public List<Participante> get() {
        return repo.findAll();
    }

    @Override
    public Participante get(Long id) {
        return repo.findById(id).orElse(null);
    }

    @Override
    public List<Participante> get(String termoBusca) {
        throw new Error("Method not implemented");
    }

    @Override
    public Participante save(Participante objeto) {
        return repo.save(objeto);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public List<Participante> getAll() {
        return repo.findAll();
    }
    
}
