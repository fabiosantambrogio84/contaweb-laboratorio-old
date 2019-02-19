package com.contaweb.laboratorio.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.contaweb.laboratorio.model.Ricetta;
import com.contaweb.laboratorio.repository.RicettaRepository;

@Service
public class RicettaService {

	private final RicettaRepository repository;

    public RicettaService(RicettaRepository repository) {
        this.repository = repository;
    }
    
    public List<Ricetta> findAllByOrderByNomeAsc(){
    	return repository.findAllByOrderByNomeAsc();
    }
}
