package com.contaweb.laboratorio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LottoController {

	@RequestMapping("/lotti/ricerca")
	public ModelAndView getRicerca() {
 
		String message = "";
		return new ModelAndView("ricercaLotti", "message", message);
	}
}
