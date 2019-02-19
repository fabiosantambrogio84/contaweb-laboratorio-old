package com.contaweb.laboratorio.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.contaweb.laboratorio.model.Ricetta;

@Repository
public interface RicettaRepository extends CrudRepository<Ricetta, Integer>{

	public List<Ricetta> findAllByOrderByNomeAsc();
}
