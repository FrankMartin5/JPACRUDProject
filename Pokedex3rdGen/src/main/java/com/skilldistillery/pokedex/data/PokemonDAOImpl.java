package com.skilldistillery.pokedex.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokedex.entities.Pokemon;

@Service
@Transactional
public class PokemonDAOImpl implements PokemonDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Pokemon findByID(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public Pokemon findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pokemon createPkmn(Pokemon pkmn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pokemon updatePkmn(int id, Pokemon pkmn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deletePkmn(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
