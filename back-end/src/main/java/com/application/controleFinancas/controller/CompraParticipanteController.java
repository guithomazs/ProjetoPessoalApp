package com.application.controleFinancas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.application.controleFinancas.model.CompraParticipante;
import com.application.controleFinancas.service.CompraParticipanteService;

@RestController
@RequestMapping("/compraParticipante")
public class CompraParticipanteController implements IController<CompraParticipante>{

    @Autowired
    private CompraParticipanteService servico;

    @Override
    @GetMapping("/")
    public ResponseEntity<List<CompraParticipante>> get() {
        List<CompraParticipante> result = servico.get();
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @Override
    @GetMapping("/{id}")
    public ResponseEntity<CompraParticipante> get(@PathVariable("id") Long id) {
        CompraParticipante result = servico.get(id);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<CompraParticipante>> get(String termoBusca) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'get'");
    }

    @Override
    @PostMapping("/")
    public ResponseEntity<CompraParticipante> insert(@RequestBody CompraParticipante objeto) {
        CompraParticipante registro = servico.save(objeto);
        return new ResponseEntity<>(registro, HttpStatus.CREATED);
    }

    @Override
    @PutMapping("/")
    public ResponseEntity<CompraParticipante> update(@RequestBody CompraParticipante objeto) {
        CompraParticipante registro = servico.save(objeto);
        return new ResponseEntity<>(registro, HttpStatus.OK);
    }

    @Override
    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable("id") Long id) {
        servico.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
}
