package com.skilldistillery.pokedex.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.pokedex.data.PokemonDAO;
import com.skilldistillery.pokedex.entities.Pokemon;

@Controller
public class PokemonController {
	
	@Autowired
	private PokemonDAO dao;
	
	@RequestMapping(path= {"/", "home.do"}, method = RequestMethod.GET )
	public String home(Model model) {
		List<Pokemon> pkmn = dao.findAll();
		model.addAttribute("pokemon", pkmn);
		return "home";
	}
	
	@RequestMapping(path = "getPkmn.do")
	public String findPkmnByID(Integer pid, Model model) {
		Pokemon pkmn = null;
		pkmn = dao.findByID(pid);
		model.addAttribute("pokemon", pkmn);
		System.out.println(pkmn);
		return "showPkmn";
	}
	@RequestMapping(path = "getPkmnByName.do")
	public String findPkmnByID(@RequestParam String name, Model model) {
		Pokemon pkmn = null;
		pkmn = dao.findByName(name);
		model.addAttribute("pokemon", pkmn);
		System.out.println(pkmn);
		return "showPkmn";
	}
	
	@RequestMapping(path="createPkmn.do", method = RequestMethod.POST)
	public ModelAndView createPkmn(Pokemon pkData) {
		ModelAndView mv = new ModelAndView();
		Pokemon pkmn = dao.createPkmn(pkData);
		mv.addObject("pokemon", pkmn);
		mv.setViewName("newPkmn");
		return mv;
	}
	
	@RequestMapping(path="sendToUpdatePkmn.do", method = RequestMethod.GET)
	public ModelAndView updatePkmn(Integer id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("pokemon", dao.findByID(id));
		mv.setViewName("updatePkmn");
		return mv;
	}
	
	
	@RequestMapping(path="updatePkmn.do", method = RequestMethod.POST)
	public ModelAndView updatedPkmn(Integer id, Pokemon pkmn) {
		ModelAndView mv = new ModelAndView();
		dao.updatePkmn(id, pkmn);
		mv.addObject("pokemon", dao.findByID(id));
		mv.setViewName("updatedPkmn");
		return mv;
	}
	
	@RequestMapping(path = "deletePkmn.do", method = RequestMethod.POST)
	public ModelAndView deletePkmn(Integer id   ) {
		boolean deletePkmn = dao.deletePkmn(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("delete", deletePkmn);
		mv.setViewName("home");
		return mv;
	}
	
}
