package com.application.controleFinancas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.controleFinancas.model.Compra;
import com.application.controleFinancas.repository.CompraRepository;

@Service
public class CompraService implements IService<Compra> {

    @Autowired
    private CompraRepository repo;

    @Override
    public List<Compra> get() {
        return repo.findAll();
    }

    @Override
    public Compra get(Long id) {
        return repo.findById(id).orElse(null);
    }

    public List<Compra> getPagasParticipante(Long idParticipante) {
        return repo.getPagas(idParticipante);
    }

    @Override
    public List<Compra> get(String termoBusca) {
        throw new Error("Method not implemented");
    }

    @Override
    public Compra save(Compra objeto) {
        return repo.save(objeto);
    }

    @Override
    public void delete(Long id) {
        repo.deleteById(id);
    }

    public List<Compra> getAll() {
        return repo.findAll();
    }
    
}
