package com.contaweb.laboratorio.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.contaweb.laboratorio.model.Ricetta;
import com.contaweb.laboratorio.service.RicettaService;

@Controller
public class LaboratorioController {

	private final RicettaService ricettaService;
	
	public LaboratorioController(RicettaService ricettaService) {
		this.ricettaService = ricettaService;
	}
	
	@RequestMapping("/laboratorio/ricette")
	public ModelAndView getRicette() {
		List<Ricetta> ricette = ricettaService.findAllByOrderByNomeAsc();
		return new ModelAndView("ricette", "ricetteList", ricette);
	}
	
	@RequestMapping("/laboratorio/acquisto")
	public ModelAndView getAcquisto() {
		String message = "";
		return new ModelAndView("acquisto", "message", message);
	}
	
	@RequestMapping("/laboratorio/vendita")
	public ModelAndView getVendita() {
		String message = "";
		return new ModelAndView("vendita", "message", message);
	}
	
	@RequestMapping("/laboratorio/magazzino")
	public ModelAndView getMagazzino() {
		String message = "";
		return new ModelAndView("magazzino", "message", message);
	}
	
	@RequestMapping("/laboratorio/anagrafica")
	public ModelAndView getAnagrafica() {
		String message = "";
		return new ModelAndView("anagrafica", "message", message);
	}
}
