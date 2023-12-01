package com.application.controleFinancas.controller;

import org.springframework.http.ResponseEntity;

public interface IController<T> {

    public ResponseEntity<?> get();
    public ResponseEntity<?> get(Long id);
    public ResponseEntity<?> get(String termoBusca);
    public ResponseEntity<T> insert(T objeto);
    public ResponseEntity<T> update(T objeto);
    public ResponseEntity<?> delete(Long id);
    
}
