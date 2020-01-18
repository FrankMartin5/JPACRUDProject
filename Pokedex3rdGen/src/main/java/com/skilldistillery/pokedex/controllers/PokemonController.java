package com.skilldistillery.pokedex.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.pokedex.data.PokemonDAO;
import com.skilldistillery.pokedex.entities.Pokemon;

@Controller
public class PokemonController {
	private PokemonDAO dao;
	
	@RequestMapping(path= {"/", "home.do"}, method = RequestMethod.GET )
	public String home() {
		return "home";
	}
	
	@RequestMapping(path = "getPkmn.do")
	public String findPkmnByID(Integer pid, Model model) {
		Pokemon pkmn = null;
		pkmn = dao.findByID(pid);
		model.addAttribute("pkmn", pkmn);
		return "home";
	}
}
