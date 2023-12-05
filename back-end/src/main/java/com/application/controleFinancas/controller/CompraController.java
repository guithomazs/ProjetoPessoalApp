package com.application.controleFinancas.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.application.controleFinancas.model.Compra;
import com.application.controleFinancas.service.CompraService;

@RestController
@CrossOrigin("*")
@RequestMapping("/compra")
public class CompraController implements IController<Compra>{

    @Autowired
    private CompraService servico;

    @Override
    @GetMapping("/")
    public ResponseEntity<List<Compra>> get() {
        List<Compra> result = servico.get();
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @Override
    @GetMapping("/{id}")
    public ResponseEntity<Compra> get(@PathVariable("id") Long id) {
        Compra result = servico.get(id);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/pagas/{id}")
    public ResponseEntity<List<Compra>> getPagasParticipante(@PathVariable("id") Long idParticipante) {
        List<Compra> result = servico.getPagasParticipante(idParticipante);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @Override
    public ResponseEntity<List<Compra>> get(String termoBusca) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'get'");
    }

    @Override
    @PostMapping("/")
    public ResponseEntity<Compra> insert(@RequestBody Compra objeto) {
        Compra registro = servico.save(objeto);
        return new ResponseEntity<>(registro, HttpStatus.CREATED);
    }

    @Override
    @PutMapping("/")
    public ResponseEntity<Compra> update(@RequestBody Compra objeto) {
        Compra registro = servico.save(objeto);
        return new ResponseEntity<>(registro, HttpStatus.OK);
    }

    @Override
    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable("id") Long id) {
        servico.delete(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
}